#!/usr/bin/env ruby

#####################################
# Pig Latin
# ================
# Pig Latin is a game of alterations played 
# on the English language game. To create the Pig 
# Latin form of an English word the initial consonant 
# sound is transposed to the end of the word and an 
# ay is affixed (Ex.: "banana" would yield anana-bay). 
# Read Wikipedia for more information on rules.
#####################################

vowels = ['a', 'e', 'i', 'o', 'u']

puts "Word to translate: "
word = gets.chomp

first_letter = word[0]

translation = if vowels.include?(first_letter) then word + "way" else word[1..-1] + first_letter + "ay" end

puts translation.capitalize