#!/usr/bin/env ruby

#####################################
# Count Vowels
# ================
# Enter a string and the program counts the number of vowels in the text. 
# For added complexity have it report a sum of each vowel found.
#####################################

# Vars. Default hash value to 0 so we can increment up by one if a vowel is counted.
vowel_count = Hash.new(0)
vowel_regex = /[aeiouAEIOU]/
total_vowel_count = 0

# User input captured
print "Enter a Sentence: "
sentence = gets.chomp

puts

# Scan for vowels. Insert/Update vowel count in hash.
sentence.scan(vowel_regex) { |letter| vowel_count[letter.downcase.to_sym] += 1 }

# Then, sort by frequency (-1*value reverses order so most frequent is first), then loop through and print out the counts.
vowel_count.sort_by { |_key, value| -1*value }.each do |vowel, count|
	puts "Vowel '#{vowel}': #{count}"
	total_vowel_count += count
end

# Print out total vowel count
puts
puts "================================"
puts "Total Vowels: #{total_vowel_count}"