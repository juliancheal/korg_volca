require "micromidi"
require "midi"

module KorgVolca
  module MidiGenerator

    def self.discover(args = nil, direction = :output)
      @device = nil

      case args
      when :first then
        if direction == :output
          @device = UniMIDI::Output.use(:first)
        else
          @device = UniMIDI::Input.use(:first)
        end
      when :last then
        if direction == :output
          @device = UniMIDI::Output.use(:last)
        else
          @device = UniMIDI::Input.use(:last)
        end
      else
        if direction == :output
          @device = UniMIDI::Output.gets
        else
          @device = UniMIDI::Input.gets
        end

      end
    end

    def self.list_devices
      UniMIDI::Output.list
    end

    def self.generate(data, args = nil)
      # state = MicroMIDI::State.new(nil,@output)
      # messages = MicroMIDI::Instructions::Message.new(state)
      # @output = UniMIDI::Output.use(1)
      @midi = MIDI::Session.new(@device)
      #
      # @output.puts(messages.control_change(51,127))
      # @output.puts(0x80, 60, 100)
      #
      @midi.play(data, 0.5)
      @midi.off
    end
  end
end
