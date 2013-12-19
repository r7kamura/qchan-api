module QchanApi
  module Errors
    class Error < StandardError
    end

    class InvalidParamsError < Error
      def message
        "Invalid parameters"
      end
    end
  end
end
