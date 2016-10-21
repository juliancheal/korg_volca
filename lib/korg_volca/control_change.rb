module KorgVolca
  class ControlChange

    def send_message(args)
      MidiGenerator.generate_control_change(args)
      sleep 0.01 # Need a gap before sending musical midi notes
    end
  end
end
