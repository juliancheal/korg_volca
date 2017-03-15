require 'korg_volca'

volca_beats = KorgVolca::Beats.new

# Play single drum beat using note values
volca_beats.play('C2')

# Play single clap calling method directly
volca_beats.clap
volca_beats.kick
