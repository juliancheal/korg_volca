module KorgVolca
  # Korg Volca Beats: Drum Synth
  class Beats
    KICK             = 40
    SNARE            = 41
    LO_TOM           = 42
    HI_TOM           = 43
    CL_HAT           = 44
    OP_HAT           = 45
    CLAP             = 46
    CLAVES           = 47
    AGOGO            = 48
    CRASH            = 49
    CLAP_PCM         = 50
    CLAVES_PCM       = 51
    AGOGO_PCM        = 52
    CRASH_PCM        = 53
    STUTTER_TIME     = 54
    STUTTER_DEPTH    = 55
    TOM_DECAY        = 56
    CLOSED_HAT_DECAY = 57
    OPEN_HAT_DECAY   = 58
    HAT_GRAIN        = 59

    def initialize(model_name = :volca_bass)
      connection = KorgVolca::Connection.new
      @device = KorgVolca::Device.new(connection.devices[model_name][:device])
    end

    def kick(value = 100)
      play(KICK, value)
    end

    def snare(value = 100)
      play(SNARE, value)
    end

    def lo_tom(value = 100)
      play(LO_TOM, value)
    end

    def hi_tom(value = 100)
      play(HI_TOM, value)
    end

    def cl_hat(value = 100)
      play(CL_HAT, value)
    end

    def op_hat(value = 100)
      play(OP_HAT, value)
    end

    def clap(value = 100)
      play(CLAP, value)
    end

    def claves(value = 100)
      play(CLAVES, value)
    end

    def agogo(value = 100)
      play(AGOGO, value)
    end

    def crash(value = 100)
      play(CRASH, value)
    end

    def clap_pcm(value = 100)
      play(CLAP_PCM, value)
    end

    def claves_pcm(value = 100)
      play(CLAVES_PCM, value)
    end

    def agogo_pcm(value = 100)
      play(AGOGO_PCM, value)
    end

    def crash_pcm(value = 100)
      play(CRASH_PCM, value)
    end

    def stuttder_time(value)
      control_change(STUTTER_TIME, value)
    end

    def stutter_depth(value)
      control_change(STUTTER_DEPTH, value)
    end

    def tom_decay(value)
      control_change(TOM_DECAY, value)
    end

    def closed_hat_decay(value)
      control_change(CLOSED_HAT_DECAY, value)
    end

    def open_hat_decay(value)
      control_change(OPEN_HAT_DECAY, value)
    end

    def hat_grain(value)
      control_change(HAT_GRAIN, value)
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
