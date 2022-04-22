require 'anagramer'
require 'rspec'

describe(Anagram) do
  describe('#initialize') do
    it('will recognize object attributes') do
      anagram = Anagram.new('art', 'rat')
      expect(anagram.string1).to(eq('art'))
      expect(anagram.string2).to(eq('rat'))
    end
  end

  describe('#anagram_checker') do
    it('will check to see if two words are anagrams') do
      anagram = Anagram.new('art', 'rat')
      not_anagram = Anagram.new('cat', 'rat')
      also_not = Anagram.new('cat', 'at')
      expect(anagram.anagram_checker).to(eq('Is an anagram'))
      expect(not_anagram.anagram_checker).to(eq('Is NOT an anagram'))
      expect(also_not.anagram_checker).to(eq('Is NOT an anagram'))
    end

    it('will check to see that two words are anagrams if they have capital letters') do
      anagram = Anagram.new('aRt', 'rAT')
      expect(anagram.anagram_checker).to(eq('Is an anagram'))
    end

    it('will recognize when there are the same latters but unequal amounts') do 
      anagram = Anagram.new('aat', 'att')
      expect(anagram.anagram_checker).to(eq('Is NOT an anagram'))
    end

    it('will check to see if entered words contain vowels') do
      anagram = Anagram.new('chz', 'zch')
      expect(anagram.anagram_checker).to(eq('Is NOT an anagram'))
    end

    # it('will check to see if entered words are actually antigrams') do
    #   expect('').to(eq())
    # end

    # it('will check two sentences to see if they are anagrams') do
    #   expect('').to(eq())
    # end
  end

  describe('#vowel_checker') do
    it('will return true if the anagram contains a vowel') do
      has_vowel = Anagram.new('art', 'rat')
      no_vowel = Anagram.new('chz', 'zhc')
      expect(has_vowel.vowel_checker).to(eq(true))
      expect(no_vowel.vowel_checker).to(eq(false))
      # expect(vowel_checker(['a','r','t'])).to(eq(true))
      # expect(vowel_checker(['c','h','z'])).to(eq(false))
    end
  end
end

