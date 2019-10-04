# frozen_string_literal: true

require 'rspec'
require './calculator.rb'

RSpec.describe DegreeCalculator do
  let(:calculator) { DegreeCalculator.new }

  describe '#degree' do
    context 'when valid' do
      it 'degree input' do
        calculator.degree = 273.15
        expect(calculator.degree).to be 273.15
      end
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
      it 'need_scale input' do
        calculator.used_scale = 'K'
        expect(calculator.used_scale).to be 'K'
      end
    end
    context 'when invalid' do
      it 'need_scale should be not nil' do
        calculator.need_scale = ''
        expect(calculator.need_scale).to be 'K'
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
      it 'used_scale input' do
        calculator.need_scale = 'K'
        expect(calculator.need_scale).to be 'K'
      end
    end
    context 'when invalid' do
      it 'used_scale should be not nil' do
        calculator.used_scale = ''
        expect(calculator.used_scale).to be 'C'
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
        calculator.used_scale = 'K'
        calculator.degree = 273.15
        calculator.need_scale = 'F'
        calculator.transform
        expect(calculator.degree_k).to be 273.15
        expect(calculator.degree_c).to be 0.0
        expect(calculator.degree_f).to be 32.0
        expect(calculator.return_degree).to be 32.0
      end
      it 'transform F to K' do
        calculator.used_scale = 'F'
        calculator.degree = 32.0
        calculator.need_scale = 'K'
        calculator.transform
        expect(calculator.degree_c).to be 0.0
        expect(calculator.degree_f).to be 32.0
        expect(calculator.degree_k).to be 273.15
        expect(calculator.return_degree).to be 273.15
      end
    end
  end
end
