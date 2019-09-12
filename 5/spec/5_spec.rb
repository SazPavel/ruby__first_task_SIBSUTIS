# frozen_string_literal: true

require 'rspec'
require '../work'

RSpec.describe WorkCsv do
  let(:calculator) { WorkCsv.new }

  context 'when correct data' do
    it 'minimum' do
      expect(calculator.minimum('../text.csv')).to be 43_829
    end
    it 'maximum' do
      expect(calculator.maximum('../text.csv')).to be 7_599_647
    end
    it 'unbuased sample variance' do
      expect(calculator.unbiased_sample_variance('../text.csv')).to be
      1_862_583_282_734.0823
    end
  end
end