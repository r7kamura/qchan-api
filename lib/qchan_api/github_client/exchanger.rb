module QchanApi
  module GithubClient
    class Exchanger
      def self.exchange(*args)
        new(*args).exchange
      end

      def initialize(attributes)
        @code = attributes[:code]
        @redirect_uri = attributes[:redirect_uri]
      end

      def exchange
        Response.new(post).access_token
      end

      private

      def post
        RestClient.post(url, params)
      end

      def url
        Settings.github_exchange_url
      end

      def params
        {
          client_id: Settings.github_client_id,
          client_secret: Settings.github_client_secret,
          code: @code,
          redirect_uri: @redirect_uri,
        }
      end

      class Response
        def initialize(raw)
          @raw = raw
        end

        def access_token
          decode["access_token"]
        end

        def decode
          Hash[Addressable::URI.form_unencode(@raw)]
        end
      end
    end
  end
end
