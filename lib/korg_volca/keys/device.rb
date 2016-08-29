require "korg_volca/midi_generator"

module KorgVolca
  module Keys
    class Device

      def discover(args = nil, direction = :output)
        MidiGenerator.discover(args, direction)
      end

      def list_devices
        MidiGenerator.list_devices
      end

      def play(note, *args)
        if note.is_a?(Hash) && args.empty?
          MidiGenerator.generate(note[:note])
        else
          MidiGenerator.generate(note,args)
        end
      end

      def play_chord(notes, *args)
        MidiGenerator.generate(notes, args)
      end

    end
  end
end
