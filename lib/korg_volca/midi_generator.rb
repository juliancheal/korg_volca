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
      @midi = MIDI::Session.new(@device)
      @midi.play(data, 0.5)
      @midi.off
    end

    def self.generate_control_change(data, args = nil)
      state = MicroMIDI::State.new(nil,@device)
      message = MicroMIDI::Instructions::Message.new(state)
      @device.puts(message.control_change(data[0],data[1]))
    end
  end
end
