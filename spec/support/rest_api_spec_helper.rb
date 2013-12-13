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
      send(method, path, params, env)
    end
  end
end
