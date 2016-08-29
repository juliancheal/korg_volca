require 'korg_volca/keys/context'

module KorgVolca
  module Keys
    extend self

    def new(*args, &block)
      Context.new
    end
  end
end
