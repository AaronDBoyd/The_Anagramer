require 'pry'

# anagrams are two words that have the semae letters in different orders.
# anagrams also contain the same amount of letters.

#1.break words into separate arrays
#2.run through loop to see if they contain all the same letters
#3.write conditional to return either 'Is an anagram' or 'Is NOT an anagram'
#4.add .downcase method to check words with capital letters
#5.add vowel array and method to check for vowels
#6.remove empty spaces to check sentences

#?? use initializer to create an object??






class Anagram 
  attr_accessor(:string1, :string2)
  def initialize(string1, string2)
    @string1 = string1.delete(' ').downcase.split(//).sort
    @string2 = string2.delete(' ').downcase.split(//).sort 
    # @string3 = string1 || string2
  end

  # def disco_splits()
  #   str = @string1 || @string2
  #   @string3.delete(' ').downcase.split(//).sort
  # end

  def vowel_checker?()
    vowels = ['a','e','i','o','u','y']
    # array = @string1.disco_splits()
      # array = .disco_splits(@string1)
    # array = @string1.delete(' ').downcase.split(//).sort
    # array.delete(" ")
# binding.pry    
    @string1.each do |letter|
      if vowels.include?(letter)
        return true
      else
        return false
      end
    end
  end

  def anti_gram?()
    @string1.each do |letter|
      if @string2.include?(letter)
        return false
      else
        return true
      end 
    end
  end

  def anagram_checker()
    array_one = @string1
    array_two = @string2
    # array_one = @string1.delete(' ').downcase.split(//).sort
    # array_two = @string2.delete(' ').downcase.split(//).sort
# binding.pry
    # array_one.delete(' ')
    # array_two.delete(' ')
# binding.pry
    if array_one.length != array_two.length
      return "Is NOT an anagram"
    elsif vowel_checker?() == false
      
      return "Is NOT an anagram"
    elsif array_one.join == array_two.join
         
          return "Is an anagram"
        else
          return "Is NOT an anagram"
        
      
    end
  end
end

# anagram = Anagram.new('Eleven plus two', 'Twelve plus one')
# anagram = Anagram.new('Eleven plus two', 'Twelve plus one')

# p anagram.vowel_checker


# class Anagram 
#   def anagram_checker(word1, word2)
#     array_one = word1.downcase.split(//)
#     array_two = word2.downcase.split(//)

#     if array_one.length != array_two.length
#       return "Is NOT an anagram"
#     else
#       array_one.each do |letter|
#         if array_two.include?(letter)
#           return "Is an anagram"
#         else
#           return "Is NOT an anagram"
#         end
#       end
#     end
#   end
# end