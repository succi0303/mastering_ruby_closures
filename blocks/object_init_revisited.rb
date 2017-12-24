module Twitter
  module REST
    class Client
      attr_accessor :consumer_key, :consumer_secret,
        :access_token, :access_token_secret

      def initialize(options={}, &block)
        options.each{|k, v| send("#{k}=", v)}
        instance_eval(&block) if block_given
      end
    end
  end
end
