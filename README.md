<!--
title: 'Ruby Sinatra API lambda Opentelemetry Dynatrace'
description: 'This template demonstrates how deploy a simple Ruby Sinatra API service backed by DynamoDB running on AWS Lambda configured to send traces to Dynatrace.'
layout: Doc
framework: v2
platform: AWS
language: Ruby
We use a app created by Serverless - https://github.com/serverless/examples/tree/master/aws-ruby-sinatra-dynamodb-api
-->

# Ruby Sinatra API lambda Opentelemetry Dynatrace

We use a app created by Serverless - https://github.com/serverless/examples/tree/master/aws-ruby-sinatra-dynamodb-api, use then to deploy de app in your aws environment 

# Enable Trace ingest on Dynatrace
### Create a Api-Token with "Ingest Opentelemetry Trace" permission
![image](https://user-images.githubusercontent.com/54456808/135638886-0fe9b6e5-db45-4288-8675-792c905ca471.png)

### Edit the below block with your dynatrace endpoint and api-token created before
```
headers = Hash["Authorization" => "Api-Token xxxxxx.xxxxxxxxxxxxxxxxxxxx.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"]
dtOtel = OpenTelemetry::Exporter::OTLP::Exporter.new(
            endpoint: 'https://xxxxxxxxx.live.dynatrace.com/api/v2/otlp/v1/traces',
            headers: headers
         )
```
