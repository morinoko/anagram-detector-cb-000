class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  # find anagram matches given an array of words
  def match(possible_anagrams)
    possible_anagrams.select do |possible_anagram|
      possible_anagram if @word.split("").sort == possible_anagram.split("").sort
    end
  end
end
