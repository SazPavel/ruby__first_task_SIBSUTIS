# frozen_string_literal: true

require 'csv'

# search maximum, minimum, arithmetic mean, unbiased sample variance
class WorkCsv
  def first_element(filename)
    table = CSV.read(filename)
    table[0][0].to_i
  rescue Errno::ENOENT
    -1
  end

  def arithmetic_mean(filename)
    sum = amount = 0
    begin
      CSV.foreach(filename) do |row|
        sum += row[0].to_i
        amount += 1
      end
      sum / amount
    rescue Errno::ENOENT
      -1
    end
  end

  def maximum(filename)
    max = first_element(filename)
    return -1 if max == -1

    CSV.foreach(filename) do |row|
      row[0].to_i > max ? max = row[0].to_i : max
    end
    max
  end

  def minimum(filename)
    min = first_element(filename)
    return -1 if min == -1

    CSV.foreach(filename) do |row|
      row[0].to_i < min ? min = row[0].to_i : min
    end
    min
  end

  def unbiased_sample_variance(filename)
    sample_mean = arithmetic_mean(filename)
    return -1 if sample_mean == -1

    sum = amount = 0
    CSV.foreach(filename) do |row|
      sum += (row[0].to_i - sample_mean)**2
      amount += 1
    end
    (1.to_f / (amount - 1)) * sum
  end
end
