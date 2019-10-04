# frozen_string_literal: true

require 'csv'

# search maximum, minimum, mean, unbiased sample variance
class StatCsv
  def table_from_file(filename)
    table = CSV.parse(File.read(filename))
    table.transpose[0].map(&:to_i)
  rescue Errno::ENOENT
    -1
  end

  def maximum(table)
    table.max
  end

  def minimum(table)
    table.min
  end

  def mean(table)
    table.inject(0, :+) / table.length
  end

  def unbiased_sample_variance(table)
    table.inject(0) { |sum, n| sum + (n - mean(table))**2 / (table.length - 1) }
  end
end
