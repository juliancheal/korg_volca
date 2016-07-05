require "midi"

# prompt the user to select an input and output
@output = UniMIDI::Output.gets
@duration = 0.3

notes = [36, 38, 43, 50, 42, 46, 39, 75, 67, 49]
notes.each do |note|
  @output.puts(0x90, note, 100) # note on
  sleep(@duration)
end
