require 'korg_volca'

# state = MicroMIDI::State.new(nil,@output)
# messages = MicroMIDI::Instructions::Message.new(state)#,{:channel => 0})
# @output.puts(messages.control_change(51,127))

volca_keys = KorgVolca::Keys.new

volca_keys.eg_sustain(127)

# Play single note
volca_keys.play("C4")
#
# # Play single note with params
volca_keys.play("C4", attack: 0.7, release: 4)
#
# # Play chord
volca_keys.play_chord(["C4","E4", "G4"])
