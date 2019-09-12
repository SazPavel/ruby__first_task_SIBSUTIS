# frozen_string_literal: true

require './calculator'
calc = Calculator.new
puts 'Enter degrees'
calc.degree = gets.chomp
puts 'Enter the name of the scale used'
calc.used_scale = gets.chomp.capitalize
puts 'Enter the name of the desired scale'
calc.need_scale = gets.chomp.capitalize
calc.used_to_need
puts 'result:'
puts calc.degree
