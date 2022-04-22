require 'anagramer'
require 'rspec'

describe(Anagram) do
  describe('anagram_checker') do
    it('will check to see if two words are anagrams') do
      anagram = Anagram.new
      expect(anagram.anagram_checker('art', 'rat')).to(eq('Is an anagram'))
      expect(anagram.anagram_checker('cat', 'bat')).to(eq('Is NOT an anagram'))
      expect(anagram.anagram_checker('cat', 'at')).to(eq('Is NOT an anagram'))
    end

    it('will check to see that two words are anagrams if they have capital letters') do
      anagram = Anagram.new
      expect(anagram.anagram_checker('aRt', 'rAT')).to(eq('Is an anagram'))
    end

    # it('will recognize when there are the same latters but unequal amounts') do 
    #   anagram = Anagram.new
    #   expect(anagram.anagram_checker('att', 'aat')).to(eq('Is NOT an anagram'))
    # end

    # it('will check to see if entered words are actually words') do
    #   expect('').to(eq())
    # end

    # it('will check to see if entered words are actually antigrams') do
    #   expect('').to(eq())
    # end

    # it('will check two sentences to see if they are anagrams') do
    #   expect('').to(eq())
    # end
  end
end

