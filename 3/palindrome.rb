# frozen_string_literal: true

# palindrome check
class Palindrome
  def self.palindrome?(word)
    word.reverse == word
  end
end
