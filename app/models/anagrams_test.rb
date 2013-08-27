def anagrams(input_word)
  sorted = input_word.split(//).sort.join
  Word.select(:word).where("sorted_word.upcase ilike?", "#{sorted.upcase}")
end