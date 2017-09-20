def song_decoder(song)
  remove_wub = song.split("WUB")
  remove_empty = remove_wub.reject { |word| word.empty?}
  remove_empty.join(" ")
end

p song_decoder("AWUBWUBWUBBWUBWUBWUBC")
