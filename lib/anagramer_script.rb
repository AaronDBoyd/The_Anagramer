#!/usr/bin/ruby
require_relative 'anagramer'

puts "Hello!"
puts "Welcome to The Anagramer!"
puts "Would you like to use the Anagramer? y or n"
play = gets.chomp()
if play == "y"  
  puts "Did you know that an Anagram is when two words or phrases are different but contain all the same letters?" 
  puts "Also, an Antigram is when two words or phrases contain none of the same letters."
  puts "Please enter the first word or phrase."
  phrase1 = gets.chomp()
  puts "Please enter another word or phase to see if it is an Anagram of the first word."
  phrase2 = gets.chomp()
  puts "Please hold....we are processing."
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.................still proccessing'
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.'
  puts '.'

  puts 'The result of your input....'
  gram = Anagram.new("#{phrase1}","#{phrase2}" )
  puts gram.anagram_checker
else
  puts "Well, fine then."
end







