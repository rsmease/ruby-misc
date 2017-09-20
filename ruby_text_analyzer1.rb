
# File.open("descartes1.txt").each {|line| puts line}

lines = File.readlines("descartes1.txt")
line_count = lines.size

text = lines.join
total_characters = text.length

total_characters_no_spaces = text.gsub(/\s+/, '').length

word_count = text.split.length

sentence_count = text.split(/\.|\?|!/).length

paragraph_count = text.split(/\n\n/).length

stop_words = %w{the a by on for of are with just but and to the my in I has some us we you then if so}
keywords = text.split.select {|word| !stop_words.include?(word)}

sentences = text.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length}
median = sentences_sorted.length / 2
ideal_sentence = sentences_sorted.slice(median, 1).join(".")


puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_no_spaces} characters, excluding whitespace"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count/paragraph_count} sentences per paragraph (average)"
puts "#{word_count/sentence_count} words per sentences (average)"
puts "#{word_count} words"
puts "#{((keywords.length.to_f / word_count.to_f)*100).round(2)}% of words are nonfluff words"
puts "\n"
puts "Summary:\n\n" + ideal_sentence