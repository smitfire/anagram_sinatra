require "./app/models/word.rb"

get '/' do
  @word = params[:word]
  # Look in app/views/index.erb
  erb :index
end

post '/anagram' do
  @word = params[:user_input]
  # @anag = Word.anagrams(@word)
  @anag = Word.anagrams(@word)
  erb :index
end
