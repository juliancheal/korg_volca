module KorgVolca
  module Keys
    class Controls

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

      def portamento(value)
        [PORTAMENTO, value]
      end

      def expression(value)
        [EXPRESSION, value]
      end

      def voice(value)
        [VOICE, value]
      end

      def octave(value)
        [OCTAVE, value]
      end

      def detune(value)
        [DETUNE, value]
      end

      def vco_eg(value)
        [VCO_EG, value]
      end

      def vco_cutoff(value)
        [VCO_CUTOFF, value]
      end

      def vcf_eg(value)
        [VCF_EG, value]
      end

      def lfo_rate(value)
        [LFO_RATE, value]
      end

      def lfo_pitch(value)
        [LFO_PITCH, value]
      end
      def lfo_cutoff(value)
        [LFO_CUTOFF, value]
      end

      def eg_attack(value)
        [EG_ATTACK, value]
      end

      def eg_decay_release(value)
        [EG_DECAY_RELEASE, value]
      end

      def eg_sustain(value)
        [EG_SUSTAIN, value]
      end

      def delay_time(value)
        [DELAY_TIME, value]
      end

      def delay_feedback(value)
        [DELAY_FEEDBACK, value]
      end
    end
  end
end
