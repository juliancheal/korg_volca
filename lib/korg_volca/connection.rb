require 'midi'
require 'yaml'
require 'ostruct'

module KorgVolca
  # Midi Connection class, parses Yaml file to assosiate to each midi instrument
  class Connection
    attr_reader :devices

    def initialize
      @synths = []
      @devices = {}

      configuration

      @synths.each do |synth|
        device = MIDI::Session.new(
          all_devices.find { |d| d.id == synth.port unless synth.port.nil? }
        )
        @devices[synth.key.to_sym] = { device: device, metadata: synth }
      end

      @devices
    end

    def configuration(file = 'synths.yml')
      synth_file = YAML.load_file(file)

      return unless synth_file
      synth_file.each do |synth|
        @synths << OpenStruct.new(synth)
      end
    end

    def list_devices
      all_devices
    end

    private

    def all_devices
      @all_devices ||= UniMIDI::Output.all
    end
  end
end
