class Word < ActiveRecord::Base
  # Remember to create a migration!

  def self.anagrams(input_word)
    sorted = input_word.split(//).sort.join
    word_array = Word.select(:word).where("sorted_word ilike?", "#{sorted}")
    word_string = ''
    word_array.each do |word_object|
      word_string << "#{word_object.word} "
    end
    word_string
  end

end
