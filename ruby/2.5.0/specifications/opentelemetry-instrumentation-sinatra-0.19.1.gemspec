# -*- encoding: utf-8 -*-
# stub: opentelemetry-instrumentation-sinatra 0.19.1 ruby lib

Gem::Specification.new do |s|
  s.name = "opentelemetry-instrumentation-sinatra".freeze
  s.version = "0.19.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/open-telemetry/opentelemetry-ruby/issues", "changelog_uri" => "https://open-telemetry.github.io/opentelemetry-ruby/opentelemetry-instrumentation-sinatra/v0.19.1/file.CHANGELOG.html", "documentation_uri" => "https://open-telemetry.github.io/opentelemetry-ruby/opentelemetry-instrumentation-sinatra/v0.19.1", "source_code_uri" => "https://github.com/open-telemetry/opentelemetry-ruby/tree/main/instrumentation/sinatra" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["OpenTelemetry Authors".freeze]
  s.date = "2021-08-16"
  s.description = "Sinatra instrumentation for the OpenTelemetry framework".freeze
  s.email = ["cncf-opentelemetry-contributors@lists.cncf.io".freeze]
  s.homepage = "https://github.com/open-telemetry/opentelemetry-ruby".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.2.7".freeze
  s.summary = "Sinatra instrumentation for the OpenTelemetry framework".freeze

  s.installed_by_version = "3.2.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<opentelemetry-api>.freeze, ["~> 1.0.0.rc3"])
    s.add_runtime_dependency(%q<opentelemetry-instrumentation-base>.freeze, ["~> 0.18.2"])
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.2.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.17"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_development_dependency(%q<opentelemetry-sdk>.freeze, ["~> 1.0.0.rc1"])
    s.add_development_dependency(%q<rack-test>.freeze, ["~> 1.1.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.73.0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    s.add_development_dependency(%q<sinatra>.freeze, ["~> 2.0.7"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.7.6"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_development_dependency(%q<yard-doctest>.freeze, ["~> 0.1.6"])
  else
    s.add_dependency(%q<opentelemetry-api>.freeze, ["~> 1.0.0.rc3"])
    s.add_dependency(%q<opentelemetry-instrumentation-base>.freeze, ["~> 0.18.2"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.2.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.17"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.0"])
    s.add_dependency(%q<opentelemetry-sdk>.freeze, ["~> 1.0.0.rc1"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.73.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.1"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 2.0.7"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.7.6"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
    s.add_dependency(%q<yard-doctest>.freeze, ["~> 0.1.6"])
  end
end
