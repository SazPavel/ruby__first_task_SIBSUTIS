# frozen_string_literal: true

require './work_csv'
puts "1 - maximum\n2 - minimum\n3 - arithmetic mean\n4 - sample variance"
work = WorkCsv.new
task = gets.chomp
puts 'Enter filename'
filename = gets.chomp
case task
when '1'
  result = work.maximum(filename)
  puts 'Maximum'
when '2'
  result = work.minimum(filename)
  puts 'Minimum'
when '3'
  result = work.arithmetic_mean(filename)
  puts 'Arithmetic mean:'
when '4'
  result = work.unbiased_sample_variance(filename)
  puts 'Unbuased sample variance:'
end
puts result
