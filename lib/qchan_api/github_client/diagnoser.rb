module QchanApi
  module GithubClient
    class Diagnoser
      def self.diagnose(*args)
        new(*args).diagnose
      end

      def initialize(token)
        @token = token
      end

      def diagnose
        JSON.parse(get)
      end

      private

      def get
        RestClient.get(url, params)
      end

      def url
        Settings.github_user_url
      end

      def params
        { Authorization: "token #@token" }
      end
    end
  end
end
