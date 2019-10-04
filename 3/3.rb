# frozen_string_literal: true

require './palindrome'

palindrome = Palindrome.new
puts 'Enter word'
palindrome.word = gets.chomp.upcase

if palindrome.is_palindrome? == 1
  puts 'Palindrome'
else
  puts 'No palindrome'
end
