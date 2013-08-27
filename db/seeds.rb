require './app/models/word.rb'

file = File.open('./words')

file.each_line do |word|
  Word.create({:word => word.chomp, :sorted_word => word.chomp.split(//).sort.join})
end