module KorgVolca
  # Generates Midi messages
  class Device
    def initialize(connection = nil)
      @midi_generator = MidiGenerator.new(connection)
    end

    def control_change(message, value)
      @midi_generator.generate_control_change(message, value)
    end

    def play(note, *args)
      if note.is_a?(Hash) && args.empty?
        @midi_generator.generate(note[:note])
      else
        @midi_generator.generate(note, args)
      end
    end

    def play_chord(notes, *args)
      @midi_generator.generate(notes, args)
    end
  end
end
