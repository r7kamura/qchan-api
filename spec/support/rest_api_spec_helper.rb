module RestApiSpecHelper
  extend ActiveSupport::Concern

  included do
    let(:params) do
      {}
    end

    let(:env) do
      {}
    end

    let(:method) do
      example.full_description[/ (GET|POST|PUT|DELETE) /, 1].downcase
    end

    let(:path) do
      example.full_description[/ (?:GET|POST|PUT|DELETE) (.+?)(?: |$)/, 1].gsub(/:([^\s\/]+)/) { send($1) }
    end

    subject do
      body = params.presence
      body = params.to_json if body && env["CONTENT_TYPE"].try(:include?, "application/json")
      send(method, path, body, env)
    end
  end
end
