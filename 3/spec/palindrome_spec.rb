# frozen_string_literal: true

require 'rspec'
require './palindrome.rb'

RSpec.describe Palindrome do
  describe '.palindrome?' do
    subject { Palindrome.palindrome?(value) }
    context 'when it is palindrome' do
      context 'and the string is empty' do
        let(:value) { '' }
        it { is_expected.to be_truthy }
      end
      context 'and in the string even numbers of letters' do
        let(:value) { 'teet' }
        it { is_expected.to be_truthy }
      end
      context 'and in the string odd numbers of letters' do
        let(:value) { 'teset' }
        it { is_expected.to be_truthy }
      end
    end

    context 'when it is not palindrome' do
      context 'and in the string even numbers of letters' do
        let(:value) { 'test' }
        it { is_expected.to be_falsey }
      end
      context 'and in the string odd numbers of letters' do
        let(:value) { 'tesla' }
        it { is_expected.to be_falsey }
      end
    end
  end
end
