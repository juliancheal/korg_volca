require 'korg_volca'

# Create new instance
synths = KorgVolca::Connection.new

# List all Midi Devices
# Useful to know what to populate synths.yml file with
synths.list_devices.each do |device|
  puts "Name: #{device.pretty_name} Direction: #{device.direction}"
end
