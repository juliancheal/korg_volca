require 'korg_volca'

volca_bass = KorgVolca::Bass.new

volca_bass.cutoff(127)

# Play single continuous note
volca_bass.play('C4')

# # Play single note with params
# volca_bass.play('C4', attack: 0.7, release: 4)
