# frozen_string_literal: true

# Degree calculator
class Calculator
  attr_reader :degree, :need_scale, :used_scale

  def degree=(degree)
    @degree = if degree != ''
                Float(degree)
              else
                0
              end
  end

  def used_scale=(scale)
    @used_scale = scale
    @used_scale = 'C' if @used_scale.empty?
  end

  def need_scale=(scale)
    @need_scale = scale
    @need_scale = 'K' if @need_scale.empty?
  end

  def used_to_need
    case @used_scale
    when 'C'
      celsius_to
    when 'K'
      kelvin_to
    when 'F'
      fahrenheit_to
    else
      abort "Unknown scale #{used_scale}"
    end
  end

  def celsius_to
    case @need_scale
    when 'K'
      @degree += 273.15
    when 'F'
      @degree = @degree * 9 / 5 + 32
    when 'C'
      @degree
    else
      abort "Unknown scale #{need_scale}"
    end
  end

  def kelvin_to
    case @need_scale
    when 'C'
      @degree -= 273.15
    when 'F'
      @degree = (@degree - 273.15) * 9 / 5 + 32
    when 'K'
      @degree
    else
      abort "Unknown scale #{need_scale}"
    end
  end

  def fahrenheit_to
    case @need_scale
    when 'C'
      @degree = (@degree - 32) * 5 / 9
    when 'K'
      @degree = (@degree - 32) * 5 / 9 + 273.15
    when 'F'
      @degree
    else
      abort "Unknown scale #{need_scale}"
    end
  end
end
