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
    @string1 = string1
    @string2 = string2 
  end

  def vowel_checker()
    vowels = ['a','e','i','o','u','y']
    array = @word.split(//)

    array.each do |letter|
      if vowels.include?(letter)
        true
      else
        false
      end
    end
  end

  def anagram_checker()
    array_one = @string1.downcase.split(//).sort
    array_two = @string2.downcase.split(//).sort
    vowels = ['a','e','i','o','u','y']

    if array_one.length != array_two.length
      return "Is NOT an anagram"
    # elsif array_one.include?(vowels) || array_two.include?(vowels) 
    #   return "Is NOT an anagram V"
    elsif array_one == array_two    
          return "Is an anagram"
        else
          return "Is NOT an anagram"
        
      
    end
  end
end



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