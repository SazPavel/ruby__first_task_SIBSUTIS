# frozen_string_literal: true

# palindrome check
class Palindrome
  def palindrome?(word)
    word.reverse == word
  end
end
