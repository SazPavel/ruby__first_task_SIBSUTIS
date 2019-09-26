# frozen_string_literal: true

puts 'Enter word'
word = gets.chomp.upcase

if word.reverse == word
  puts "#{word} is a palindrome"
else
  puts "#{word} is't a palindrome"
end
