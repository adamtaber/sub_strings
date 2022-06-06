def substrings(words, dictionary) 
  word_string = words.gsub(/[^a-z0-9\s]/i, '')
  count_words = {}

  dictionary.each do |word|
    if word_string.include?(word)
      count_words[word] = word_string.scan(word).length
    end
  end

  count_words
end

p substrings("Test one one tone Batwo! two three!", ["one", "two", "three"])