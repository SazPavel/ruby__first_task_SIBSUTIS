# frozen_string_literal: true

require './stat_csv'
csv_stats = StatCsv.new

puts 'Enter filename'
csv_table = csv_stats.table_from_file(gets.chomp)
abort 'No such file' if csv_table == -1

puts "1 - maximum\n2 - minimum\n3 - arithmetic mean\n4 - sample variance"
task = gets.chomp

case task
when '1'
  result = csv_stats.maximum
  puts 'Maximum'
when '2'
  result = csv_stats.minimum
  puts 'Minimum'
when '3'
  result = csv_stats.mean
  puts 'Arithmetic mean:'
when '4'
  result = csv_stats.unbiased_sample_variance
  puts 'Unbuased sample variance:'
end
puts result
