require 'micromidi'

# Midi Message Generator
class MidiGenerator
  def initialize(device)
    @midi = device
  end

  def generate(data, args)
    @midi.play(data, args)
  end

  def generate_control_change(message, value)
    @midi.cc(message, value)
  end
end
