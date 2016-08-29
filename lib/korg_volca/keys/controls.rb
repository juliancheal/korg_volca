module KorgVolca
  module Keys
    class Controls

      PORTAMENTO = 5
      EXPRESSION = 1
      VOICE = 1
      OCTAVE = 1
      DETUNE = 1
      VCO_EG = 1
      VCO_CUTOFF = 1
      VCF_EG = 1
      LFO_RATE = 1
      LFO_PITCH = 1
      LFO_CUTOFF = 1
      EG_ATTACK = 1
      EG_DECAY_RELEASE = 1
      EG_SUSTAIN = 51
      DELAY_TIME = 1
      DELAY_FEEDBACK = 1

      def portamento(value)
        [PORTAMENTO, value]
      end

      def expression(value)
        11
      end
      def voice(value)
      end
      def octave(value)
      end
      def detune(value)
      end

      def vco_eg(value)
      end
      def vco_cutoff(value)
      end

      def vcf_eg(value)
      end

      def lfo_rate(value)
      end
      def lfo_pitch(value)
      end
      def lfo_cutoff(value)
      end

      def eg_attack(value)
      end
      def eg_decay_release(value)
      end
      def eg_sustain(value)
        [EG_SUSTAIN, value]
      end

      def delay_time(value)
      end
      def delay_feedback(value)
      end
    end
  end
end
