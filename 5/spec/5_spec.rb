# frozen_string_literal: true

require 'rspec'
require './work_csv.rb'

RSpec.describe WorkCsv do
  let(:calculator) { WorkCsv.new }

  context 'when correct data' do
    it 'valid minimum' do
      expect(calculator.minimum('./text.csv')).to be 43_829
    end
    it 'valid maximum' do
      expect(calculator.maximum('./text.csv')).to be 7_599_647
    end
    it 'valid unbuased sample variance' do
      expect(calculator.unbiased_sample_variance('./text.csv')).to be
      1_862_583_282_734.0823
    end
  end

  context 'when incorrect data' do
    it 'valid minimum' do
      expect(calculator.minimum('./nofile.csv')).to be(-1)
    end
    it 'valid maximum' do
      expect(calculator.minimum('./nofile.csv')).to be(-1)
    end
    it 'valid unbuased sample variance' do
      expect(calculator.minimum('./nofile.csv')).to be(-1)
    end
  end
end
