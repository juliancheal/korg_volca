require 'midi'
require 'topaz'

class Sequencer
  def initialize
    # TODO: bug first value is ignored
    @notes = [36, 36,36, 38]
  end

  def step
    puts "STEP"
    @i ||= 0
    if @i == 3
      @i = 0
    end
    p "step: #{@i+=1}, note: #{@notes[@i]}"
    @notes[@i]
  end
end

class VolcaBeatsSyncableDemo
  def initialize
    @instrument = UniMIDI::Output.gets
    @midi = MIDI::Session.new(@instrument)
    @sequence = Sequencer.new
    @tempo = Topaz::Tempo.new(190, :midi => @output) { play(@sequence.step) }
    @tempo.start
  end

  def play(data)
    @midi.note data
    sleep 0.1
  end
end

VolcaBeatsSyncableDemo.new
