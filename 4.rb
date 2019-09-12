# frozen_string_literal: true

def rabbits_in_month(month)
  if month.zero?
    0
  else
    2**(month - 1)
  end
end

puts 'Enter month'
month = gets.to_i

pairs_rabbits = rabbits_in_month(month)
puts "On the #{month} month, #{pairs_rabbits} pairs"
