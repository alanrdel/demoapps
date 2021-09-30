# frozen_string_literal: true

require 'sinatra'
require 'sinatra/json'
require 'aws-sdk-dynamodb'
require 'opentelemetry/sdk'
require 'opentelemetry/exporter/otlp'
require 'opentelemetry/exporter/jaeger'
require 'opentelemetry/instrumentation/sinatra'
Bundler.require

puts "api.rb starting tracing"


#Create a variable with dt inputs
# Set URL in endpoint:
#### SaaS https://{your-environment-id}.live.dynatrace.com/api/v2/otlp/v1/traces
#### Managed https://{your-domain}/e/{your-environment-id}/api/v2/otlp/v1/traces

#set the api-token with Ingest OpenTelemetry traces
#### headers ["Authorization" => "Api-Token xxxxxx.XXXXXXXXXXXXXXXXX.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"]

headers = Hash["Authorization" => "Api-Token <your_api_token>"]
dtOtel = OpenTelemetry::Exporter::OTLP::Exporter.new(
            endpoint: 'https://<your_environment_id>.live.dynatrace.com/api/v2/otlp/v1/traces',
            headers: headers
         )

jaegerOtel = OpenTelemetry::Exporter::Jaeger::AgentExporter.new()

# Configure the sdk with custom export
OpenTelemetry::SDK.configure do |c|
    c.logger = Logger.new(STDOUT)
    c.service_name="Sinatra"
    c.use 'OpenTelemetry::Instrumentation::Sinatra'
    c.add_span_processor(OpenTelemetry::SDK::Trace::Export::SimpleSpanProcessor.new(OpenTelemetry::SDK::Trace::Export::ConsoleSpanExporter.new()))
    c.add_span_processor(OpenTelemetry::SDK::Trace::Export::BatchSpanProcessor.new(jaegerOtel))
    c.add_span_processor(OpenTelemetry::SDK::Trace::Export::BatchSpanProcessor.new(dtOtel))
end

# Rack middleware to extract span context, create child span, and add
# attributes/events to the span
tracer = OpenTelemetry.tracer_provider.tracer('My app_name', '1.0')

#Validation Span, just say the lambda was started
tracer.in_span('App_startup') do |span|
  # set an attribute
  span.set_attribute('file', 'api.rb')
  # add an event
  span.add_event('App Instrumented')
end

client_options = if ENV['IS_OFFLINE']
                   {
                     region: 'localhost',
                     endpoint: 'http://localhost:8000',
                     credentials: Aws::Credentials.new(
                       'DEFAULT_ACCESS_KEY',
                       'DEFAULT_SECRET'
                     )
                   }
                 else
                   {}
                 end
dynamodb_client = Aws::DynamoDB::Client.new(client_options)

get '/users/:user_id' do
  result = dynamodb_client.get_item(
    key: { 'userId': params[:user_id] },
    table_name: ENV['USERS_TABLE']
  )
  item = result.item
  if item
    tracer.in_span('/users/:user_id') do |span|
      # set an attribute
      span.set_attribute('UserID', item['userId'])
      span.set_attribute('Name', item['name'])
      # add an event
      span.add_event('Get Finished')
    end
    json user_id: item['userId'], name: item['name'] if item
  else
    json error: "Could not find user with userId: #{params[:user_id]}"
    tracer.in_span('/users/:user_id') do |span|
      span.set_attribute('http.status_code', 403)
    end
  end
end

post '/users' do
  request_payload = JSON.parse(request.body.read)
  user_id = request_payload['user_id']
  name = request_payload['name']

  tracer.in_span('/users') do |span|
    # set an attribute
    span.set_attribute('UserID', name)
    span.set_attribute('Name', user_id)
    # add an event
    span.add_event('Get Finished')
  end

  return json error: "Please provide both 'user_id' and 'name'" unless user_id && name

  dynamodb_client.put_item(
    item: {
      'userId': user_id,
      'name': name
    },
    table_name: ENV['USERS_TABLE']
  )

  json user_id: user_id, name: name
end

puts "api.rb ending tracing."
