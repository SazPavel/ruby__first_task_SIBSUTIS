# frozen_string_literal: true

require './calculator'

puts 'Enter degrees'
degree = gets.chomp

puts 'Enter the name of the scale used'
used_scale = gets.chomp

puts 'Enter the name of the desired scale'
need_scale = gets.chomp

calc = DegreeCalculator.new(degree, used_scale, need_scale)

abort 'Unknown scale' if calc.transform == -1

puts 'Result:'
puts calc.return_degree
