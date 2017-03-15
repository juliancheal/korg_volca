module KorgVolca
  # Korg Volca Keys: Polyphonic Synth
  class Keys
    PORTAMENTO = 5
    EXPRESSION = 11
    VOICE = 40
    OCTAVE = 41
    DETUNE = 42
    VCO_EG = 43
    VCO_CUTOFF = 44
    VCF_EG = 45
    LFO_RATE = 46
    LFO_PITCH = 47
    LFO_CUTOFF = 48
    EG_ATTACK = 49
    EG_DECAY_RELEASE = 50
    EG_SUSTAIN = 51
    DELAY_TIME = 52
    DELAY_FEEDBACK = 53

    def initialize(model_name = :volca_keys)
      connection = KorgVolca::Connection.new
      @device = KorgVolca::Device.new(connection.devices[model_name][:device])
    end

    def portamento(value)
      control_change(PORTAMENTO, value)
    end

    def expression(value)
      control_change(EXPRESSION, value)
    end

    def voice(value)
      control_change(VOICE, value)
    end

    def octave(value)
      control_change(OCTAVE, value)
    end

    def detune(value)
      control_change(DETUNE, value)
    end

    def vco_eg(value)
      control_change(VCO_EG, value)
    end

    def vco_cutoff(value)
      control_change(VCO_CUTOFF, value)
    end

    def vcf_eg(value)
      control_change(VCF_EG, value)
    end

    def lfo_rate(value)
      control_change(LFO_RATE, value)
    end

    def lfo_pitch(value)
      control_change(LFO_PITCH, value)
    end

    def lfo_cutoff(value)
      control_change(LFO_CUTOFF, value)
    end

    def eg_attack(value)
      control_change(EG_ATTACK, value)
    end

    def eg_decay_release(value)
      control_change(EG_DECAY_RELEASE, value)
    end

    def eg_sustain(value)
      control_change(EG_SUSTAIN, value)
    end

    def delay_time(value)
      control_change(DELAY_TIME, value)
    end

    def delay_feedback(value)
      control_change(DELAY_FEEDBACK, value)
    end

    def play(note, *args)
      @device.play(note, args)
    end

    def play_chord(*args)
      @device.play_chord(args)
    end

    private

    def control_change(message, value)
      @device.control_change(message, value)
    end
  end
end
