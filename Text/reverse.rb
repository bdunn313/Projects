#!/usr/bin/env ruby

#####################################
# Reverse a String
# ================
# Enter a string and the program 
# will reverse it and print it out.
#####################################

# User Input
puts "Whatcha wanna give me? I'll flip it n' shit, promise!"
str = gets.chomp

# Ah, ruby one-liners...
puts str.downcase.reverse.capitalize