require './api'
#Require to OTEL on Ruby
require 'opentelemetry/sdk'
require 'opentelemetry/exporter/otlp'

# Export traces to console by default
ENV['OTEL_TRACES_EXPORTER'] ||= 'console'

# configure SDK with defaults
OpenTelemetry::SDK.configure
# Configure the sdk with custom export
# Configure tracer
tracer = OpenTelemetry.tracer_provider.tracer('Sinatra', '1.0')

run Sinatra::Application