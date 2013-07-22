#!/usr/bin/env ruby

#####################################
# Check if Palindrome
# ===================
# Checks if the string entered by the user is a palindrome. 
# That is that it reads the same forwards as backwards like “racecar”
#####################################

print "Enter word to check: "
word = gets.chomp

puts (word.downcase == word.downcase.reverse)