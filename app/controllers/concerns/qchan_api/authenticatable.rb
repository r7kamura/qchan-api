module QchanApi
  module Authenticatable
    extend Mem

    private

    def require_access_token
      unless current_access_token
        render status: 401, json: { error: "Unauthorized" }
      end
    end

    def current_access_token
      if token = request.authorization.try(:[], /\ABearer ([0-9a-z]{64})\z/, 1)
        AccessToken.find_by(token: token)
      end
    end
    memoize :current_access_token
  end
end
