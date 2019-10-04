# frozen_string_literal: true

# rabbits in month
class Rabbit
  def rabbits_in_month(month)
    if month < 1
      0
    else
      2**(month - 1)
    end
  end
end
