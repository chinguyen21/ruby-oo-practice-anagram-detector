# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    anagram_array = []
    array.each do |each_word|
      if support_method(each_word) == support_method(self.word)
        anagram_array << each_word 
      end
    end
    anagram_array
  end

  def support_method(word)
    hash = Hash.new(0)
    word.each_char {|char| hash[char] += 1}
    hash
  end
end
