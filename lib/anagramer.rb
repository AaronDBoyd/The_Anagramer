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
  def anagram_checker(word1, word2)
    array_one = word1.split(//)
    array_two = word2.split(//)

    if array_one.length != array_two.length
      return "Is NOT an anagram"
    else
      array_one.each do |letter|
        if array_two.include?(letter)
          return "Is an anagram"
        else
          return "Is NOT an anagram"
        end
      end
    end




  end
end
