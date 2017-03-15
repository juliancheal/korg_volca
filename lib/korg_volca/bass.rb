module KorgVolca
  # Korg Volca Bass: Bass Synth
  class Bass
    #     'slide time'       : 5,
    # 'expression'       : 11,
    # 'octave'           : 40,
    # 'lfo rate'         : 41,
    # 'lfo int'          : 42,
    # 'vco pitch 1'      : 43,
    # 'vco pitch 2'      : 44,
    # 'vco pitch 3'      : 45,
    # 'eg attack'        : 46,
    # 'eg decay/release' : 47,
    CUTOFF = 48
    # 'gate time'        : 49,

    def initialize(model_name = :volca_beats)
      connection = KorgVolca::Connection.new
      @device = KorgVolca::Device.new(connection.devices[model_name][:device])
    end

    def cutoff(value)
      control_change(CUTOFF, value)
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
