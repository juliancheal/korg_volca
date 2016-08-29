state = MicroMIDI::State.new(nil,@output)
messages = MicroMIDI::Instructions::Message.new(state)#,{:channel => 0})
@output.puts(messages.control_change(51,127))

module KorgVolca
  class ControlChange

    def initialize
    end
  end
end
