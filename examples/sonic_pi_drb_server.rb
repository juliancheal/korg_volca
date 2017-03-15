require 'drb/drb'
require 'logger'
require 'korg_volca'

# Connects to Sonic PI using DRBRuby to control all the Synths
class SonicPiDRBServer
  def initialize
    @volca_bass  = KorgVolca::Bass.new
    @volca_beats = KorgVolca::Beats.new
    @volca_keys  = KorgVolca::Keys.new

    @devices = { volca_bass: @volca_bass,
                 volca_beats: @volca_beats,
                 volca_keys: @volca_keys }
    @log = Logger.new(STDOUT)
    @log.level = Logger::INFO
  end

  def start_drb(host = 'localhost', port = '9999')
    DRb.start_service("druby://#{host}:#{port}", self)
    DRb.thread.join
  end

  def note(device_name, note_value, args = {})
    Thread.new(device_name, note_value, args) do |device, note, params|
      device_name = "Device: #{@devices[device].name}"
      @log.info("#{device_name}, Note: #{note}, Params: #{params}}")
      @devices[device].send(:play, note, params)
      Thread.exit
    end
  end
end

# Create new instance
synth = SonicPiDRBServer.new
synth.start_drb
