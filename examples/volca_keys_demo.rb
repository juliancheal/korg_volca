require 'korg_volca'

volca_keys = KorgVolca::Keys.new

volca_keys.eg_sustain(127)

# Play single continuous note
volca_keys.play('C4')

# Play single note with params
volca_keys.play('C4', attack: 0.7, release: 4)

# Play chord
volca_keys.play_chord([%w(C4 E4 G4)])
