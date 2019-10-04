# frozen_string_literal: true

# Degree calculator for celsius kelvin and fahrenheit
class DegreeCalculator
  attr_reader :degree, :degree_c, :degree_k, :degree_f, :need_scale, :used_scale

  def degree=(degree)
    @degree = if degree == ''
                0.0
              else
                degree.to_f
              end
  end

  def used_scale=(scale)
    @used_scale = if scale.empty?
                    'C'
                  else
                    scale
                  end
  end

  def need_scale=(scale)
    @need_scale = if scale.empty?
                    'K'
                  else
                    scale
                  end
  end

  def transform
    case @used_scale
    when 'C'
      @degree_c = @degree
      cel_to_kel
      cel_to_far
    when 'K'
      @degree_k = @degree
      kel_to_cel
      cel_to_far
    when 'F'
      @degree_f = @degree
      far_to_cel
      cel_to_kel
    else
      -1
    end
  end

  def return_degree
    case @need_scale
    when 'K'
      @degree_k
    when 'F'
      @degree_f
    when 'C'
      @degree_c
    else
      -1
    end
  end

  def cel_to_kel
    @degree_k = @degree_c + 273.15
  end

  def kel_to_cel
    @degree_c = @degree_k - 273.15
  end

  def cel_to_far
    @degree_f = @degree_c * 9 / 5 + 32
  end

  def far_to_cel
    @degree_c = (@degree_f - 32) * 5 / 9
  end
end
