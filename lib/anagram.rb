class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  # find anagram matches given an array of words
  def match(possible_anagrams)
    possible_anagrams.collect do |possible_anagram|
      self.word.split("").sort == possible_anagram.split("").sort
    end
  end
end
