# frozen_string_literal: true

require './calculator'

calc = DegreeCalculator.new

puts 'Enter degrees'
calc.degree = gets.chomp

puts 'Enter the name of the scale used'
calc.used_scale = gets.chomp.capitalize

puts 'Enter the name of the desired scale'
calc.need_scale = gets.chomp.capitalize

abort 'Unknown scale' if calc.transform == -1

puts 'Result:'
puts calc.degree
