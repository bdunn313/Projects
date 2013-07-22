#!/usr/bin/env ruby

#####################################
# Count Words
# ================
# Counts the number of individual words in a string. 
# For added complexity read these strings in from a 
# text file and generate a summary.
#####################################

word_count = Hash.new(0)
word_regex = /[\w-]+/

print "Enter some text: "
input = gets.chomp
puts

puts "Individual Word Counts"
puts "===================================="
total_word_count = input.scan(word_regex) { |word| word_count[word.downcase.to_sym] += 1 }.size
word_count.sort_by { |word, count| -1*count }.each { |word, count| puts "#{word}: #{count}"  }

puts
puts "===================================="
puts "Total Words: #{total_word_count}"