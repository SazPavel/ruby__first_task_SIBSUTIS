# frozen_string_literal: true

require 'rspec'
require '../calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  context 'when degree conversion' do
    it 'C to F' do
      calculator.degree = 25
      calculator.used_scale = 'C'
      calculator.need_scale = 'F'
      calculator.used_to_need
      expect(calculator.degree).to be 77.0
    end
    it 'K to C' do
      calculator.degree = 1000
      calculator.used_scale = 'K'
      calculator.need_scale = 'C'
      calculator.used_to_need
      expect(calculator.degree).to be 726.85
    end
    it 'F to K' do
      calculator.degree = 77
      calculator.used_scale = 'F'
      calculator.need_scale = 'K'
      calculator.used_to_need
      expect(calculator.degree).to be 298.15
    end
  end

  context 'when invalid data' do
    it 'degree should be not nil' do
      calculator.degree = ''
      expect(calculator.degree).to be 0
    end
    it 'used_scale should be not nil' do
      calculator.used_scale = ''
      expect(calculator.used_scale).to be 'C'
    end
    it 'need_scale should be not nil' do
      calculator.need_scale = ''
      expect(calculator.need_scale).to be 'K'
    end
  end
end
