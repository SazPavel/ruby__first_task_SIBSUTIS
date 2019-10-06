# frozen_string_literal: true

require 'rspec'
require './calculator.rb'

RSpec.describe DegreeCalculator do
  let(:calculator) { DegreeCalculator.new(0, 'k', 'k') }
  let(:calculator_kelvin) { DegreeCalculator.new(273.15, 'k', 'f') }
  let(:calculator_fahrenheit) { DegreeCalculator.new(32.0, 'f', 'k') }

  describe '#degree' do
    context 'when valid' do
      it { expect(calculator.degree).to be 0.0 }
    end

    context 'when invalid' do
      it 'degree should be not nil' do
        calculator.degree = ''
        expect(calculator.degree).to be 0.0
      end
      it 'degree should be number' do
        calculator.degree = 'C'
        expect(calculator.degree).to be 0.0
      end
    end
  end

  describe '#need_scale' do
    context 'when valid' do
      it { expect(calculator.need_scale).to eq 'K' }
    end
    context 'when invalid' do
      it 'need_scale should be not nil' do
        calculator.need_scale = ''
        expect(calculator.need_scale).to eq 'K'
      end
      it 'need_scale should be known' do
        calculator.degree = 0.0
        calculator.need_scale = 'D'
        expect(calculator.return_degree).to be(-1)
      end
    end
  end

  describe '#used_scale' do
    context 'when valid' do
      it { expect(calculator.used_scale).to eq 'K' }
    end
    context 'when invalid' do
      it 'used_scale should be not nil' do
        calculator.used_scale = ''
        expect(calculator.used_scale).to eq 'C'
      end
      it 'used_scale should be known' do
        calculator.degree = 0.0
        calculator.used_scale = 'D'
        expect(calculator.transform).to be(-1)
      end
    end
  end

  describe '.transform' do
    context 'when valid data' do
      it 'transform K to F' do
        calculator_kelvin.transform
        expect(calculator_kelvin.degree_k).to be 273.15
        expect(calculator_kelvin.degree_c).to be 0.0
        expect(calculator_kelvin.degree_f).to be 32.0
      end
      it 'transform F to K' do
        calculator_fahrenheit.transform
        expect(calculator_fahrenheit.degree_c).to be 0.0
        expect(calculator_fahrenheit.degree_f).to be 32.0
        expect(calculator_fahrenheit.degree_k).to be 273.15
      end
    end
  end
end
