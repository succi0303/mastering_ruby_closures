module Twitter
  module REST
    class Client
      attr_accessor :consumer_key, :consumer_secret,
        :access_token, :access_token_secret

      def initialize
        yield self if block_given?
      end
    end
  end
end
