# -*- encoding: utf-8 -*-
# stub: opentelemetry-exporter-otlp 0.20.3 ruby lib

Gem::Specification.new do |s|
  s.name = "opentelemetry-exporter-otlp".freeze
  s.version = "0.20.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/open-telemetry/opentelemetry-ruby/issues", "changelog_uri" => "https://open-telemetry.github.io/opentelemetry-ruby/opentelemetry-exporter-otlp/v0.20.3/file.CHANGELOG.html", "documentation_uri" => "https://open-telemetry.github.io/opentelemetry-ruby/opentelemetry-exporter-otlp/v0.20.3", "source_code_uri" => "https://github.com/open-telemetry/opentelemetry-ruby/tree/main/exporter/otlp" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["OpenTelemetry Authors".freeze]
  s.date = "2021-08-19"
  s.description = "OTLP exporter for the OpenTelemetry framework".freeze
  s.email = ["cncf-opentelemetry-contributors@lists.cncf.io".freeze]
  s.homepage = "https://github.com/open-telemetry/opentelemetry-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.2.7".freeze
  s.summary = "OTLP exporter for the OpenTelemetry framework".freeze

  s.installed_by_version = "3.2.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<google-protobuf>.freeze, ["~> 3.7"])
    s.add_runtime_dependency(%q<opentelemetry-api>.freeze, ["~> 1.0.0.rc3"])
    s.add_runtime_dependency(%q<opentelemetry-common>.freeze, ["~> 0.19.1"])
    s.add_runtime_dependency(%q<opentelemetry-sdk>.freeze, ["~> 1.0.0.rc2"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.17"])
    s.add_development_dependency(%q<faraday>.freeze, ["~> 0.13"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.73.0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.7.6"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_development_dependency(%q<yard-doctest>.freeze, ["~> 0.1.6"])
  else
    s.add_dependency(%q<google-protobuf>.freeze, ["~> 3.7"])
    s.add_dependency(%q<opentelemetry-api>.freeze, ["~> 1.0.0.rc3"])
    s.add_dependency(%q<opentelemetry-common>.freeze, ["~> 0.19.1"])
    s.add_dependency(%q<opentelemetry-sdk>.freeze, ["~> 1.0.0.rc2"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.17"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.13"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.73.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.7.6"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_dependency(%q<yard-doctest>.freeze, ["~> 0.1.6"])
  end
end
