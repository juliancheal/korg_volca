require 'korg_volca/keys/controls'
require 'korg_volca/keys/device'

module KorgVolca
  module Keys
    class Context
      extend Forwardable

      def initialize
        @instructions = {
          controls: Controls.new,
          device: Device.new
        }
      end

      def method_missing(method, *args, &block)
        results = delegate(method, args, &block)
        if results.empty?
          super
        else
          messages = results.map do |result|
            result[:message]
          end
          messages.compact.first
        end
      end

      def delegate(method, args, &block)
        results = @instructions.map do |key, instruction|
          if instruction.respond_to?(method)
            message = instruction.send(method, *args, &block)
            {
              instruction_type: key,
              message: message
            }
          end
        end
        results.compact
      end

    end
  end
end
