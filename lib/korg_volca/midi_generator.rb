require 'micromidi'

# Midi Message Generator
class MidiGenerator
  def initialize(device)
    @midi = device
  end

  def generate(data, _)
    @midi.play(data, 0.5)
  end

  def generate_control_change(message, value)
    @midi.cc(message, value)
  end
end
