require 'korg_volca'

volca_keys = KorgVolca::Keys.new

# Lists ID and name of each device
# volca_keys.list_devices

# Assigns the first midi device as an output
volca_keys.discover(:first, :output)

volca_keys.eg_sustain(127)

# Play single continuous note
volca_keys.play('C4')

# Play single note with params
volca_keys.play('C4', attack: 0.7, release: 4)

# Play chord
volca_keys.play_chord([%w(C4 E4 G4)])
