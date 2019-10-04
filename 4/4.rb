# frozen_string_literal: true

require './rabbit.rb'

puts 'Enter month'
rabbit = Rabbit.new
month = gets.to_i

pairs_rabbits = rabbit.rabbits_in_month(month)
puts "On the #{month} month, #{pairs_rabbits} pairs"
