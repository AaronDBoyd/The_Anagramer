require 'anagramer'
require 'rspec'

describe(Anagram) do
  describe('#initialize') do
    it('will recognize object attributes') do
      anagram = Anagram.new('art', 'rat')
      expect(anagram.string1).to(eq(['a','r','t']))
      expect(anagram.string2).to(eq(['a','r','t']))
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

    it('will recognize when there are the same letters but unequal amounts') do 
      anagram = Anagram.new('aat', 'att')
      expect(anagram.anagram_checker).to(eq('Is NOT an anagram'))
    end

    it('will check to see if entered words contain vowels') do
      anagram = Anagram.new('chz', 'zch')
      expect(anagram.anagram_checker).to(eq('Is NOT an anagram'))
    end

    it('will check two sentences to see if they are anagrams') do
      anagram = Anagram.new('Eleven plus two', 'Twelve plus one')
      expect(anagram.anagram_checker).to(eq('Is an anagram'))
    end
  end

  describe('#vowel_checker?') do
    it('will return true if the anagram contains a vowel') do
      has_vowel = Anagram.new('art', 'rat')
      no_vowel = Anagram.new('chz', 'zhc')
      expect(has_vowel.vowel_checker?).to(eq(true))
      expect(no_vowel.vowel_checker?).to(eq(false))
    end
  end

  describe('#anti_gram') do 
    it('will see if the given strings have no letters in common') do
      ana = Anagram.new('art', 'rat')
      anti = Anagram.new('art', 'cow')
      neither = Anagram.new('art', 'arc')
      expect(ana.anti_gram?).to(eq(false))
      expect(anti.anti_gram?).to(eq(true))
      expect(neither.anti_gram?).to(eq(false))
    end
  end

  describe('#disco_split')do
    it ('will use a long chain of methods to change the given string into an alphabetical array with no spaces or punctuation and is lowercase') do
      object = Anagram.new('Is a sentence!', 'Also a sentence...')
      expect(object.string1).to(eq(["a", "c", "e", "e", "e", "i", "n", "n", "s", "s", "t"]))
    end
  end
end

