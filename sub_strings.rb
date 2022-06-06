def substrings(words, dictionary) 
  word_array = words.gsub(/[^a-z0-9\s]/i, '').split
  dictionary_string = dictionary.join
  word_in_dictionary = {}
  word_array.each do |word|
    if dictionary_string.include?(word)
      word_in_dictionary[word] = dictionary_string.scan(word).length
    end
  end
  word_in_dictionary
end

p substrings("Test one two three!", ["one", "one", "tone", "two", "batwo", "three"])