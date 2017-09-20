def duplicate_count(text)
  chars = text.downcase.chars
  dupes = chars.select { |char| chars.count(char) > 1}
  dupes.uniq.size
end
