require 'pry'

class Anagram 
  attr_accessor(:string1, :string2)
  def initialize(string1, string2)
    @string1 = string1.delete(' ').downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split(//).sort
    @string2 = string2.delete(' ').downcase.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').split(//).sort 
  end

  def vowel_checker?()
    vowels = ['a','e','i','o','u','y'] 
    @string1.each do |letter|   
      if vowels.include?(letter)
        return true
      end
    end
    return false    
  end

  def anti_gram?()
    @string1.each do |letter|      
      if @string2.include?(letter)
        return false
      end
    end
    return true
    
  end

  def anagram_checker()
    if vowel_checker?() == false     
      return "Is NOT an anagram"
    elsif @string1.join == @string2.join        
      return "Is an anagram"
    elsif anti_gram?() == true
      return "Is an Anti-gram"
    else
      return "Is NOT an anagram"  
    end
  end
end




