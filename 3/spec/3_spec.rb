# frozen_string_literal: true

require 'rspec'
require './palindrome.rb'

RSpec.describe Palindrome do
  let(:palindrome) { Palindrome.new }

  context 'when it is palindrome' do
    it 'empty string' do
      expect(palindrome.palindrome?('')).to be true
    end
    it 'even number of letters' do
      expect(palindrome.palindrome?('teet')).to be true
    end
    it 'odd number of letters' do
      expect(palindrome.palindrome?('teset')).to be true
    end
  end

  context 'when it is not palindrome' do
    it 'even number of letters' do
      expect(palindrome.palindrome?('test')).to be false
    end
    it 'odd number of letters' do
      expect(palindrome.palindrome?('tesla')).to be false
    end
  end
end
