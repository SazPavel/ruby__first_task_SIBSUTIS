# frozen_string_literal: true

require 'rspec'
require './rabbit.rb'

RSpec.describe Rabbit do
  let(:rabbit) { Rabbit.new }

  context 'when valid data' do
    it { expect(rabbit.rabbits_in_month(3)).to be 4 }
  end

  context 'when invalid data' do
    it 'month < 0' do
      expect(rabbit.rabbits_in_month(-1)).to be 0
    end
    it 'month == 0' do
      expect(rabbit.rabbits_in_month(0)).to be 0
    end
  end
end
