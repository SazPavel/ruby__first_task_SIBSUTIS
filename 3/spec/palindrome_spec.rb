# frozen_string_literal: true

require 'rspec'
require './palindrome.rb'

RSpec.describe Palindrome do
  describe 'palindrome?' do
    context 'when it is palindrome' do
      it 'empty string' do
        expect(Palindrome.palindrome?('')).to be true
      end
      it 'even number of letters' do
        expect(Palindrome.palindrome?('teet')).to be true
      end
      it 'odd number of letters' do
        expect(Palindrome.palindrome?('teset')).to be true
      end
    end

    context 'when it is not palindrome' do
      it 'even number of letters' do
        expect(Palindrome.palindrome?('test')).to be false
      end
      it 'odd number of letters' do
        expect(Palindrome.palindrome?('tesla')).to be false
      end
    end
  end
end
