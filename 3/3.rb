# frozen_string_literal: true

require './palindrome'

puts 'Enter word'

if Palindrome.palindrome?(gets.chomp.upcase) == true
  puts 'Palindrome'
else
  puts 'No palindrome'
end
