require 'anagramer'
require 'rspec'

describe(Anagram) do
  describe('anagram_checher') do
    it('will check to see if two words are anagrams') do
      expect('art', 'rat').to(eq('Is an anagram'))
    end

    # it('will check to see that two words are anagrams if they have capital letters') do
    #   expect('').to(eq())
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

