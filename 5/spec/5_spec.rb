# frozen_string_literal: true

require 'rspec'
require './stat_csv.rb'

RSpec.describe StatCsv do
  let(:csv_stats) { StatCsv.new }
  let(:csv_table) { csv_stats.table_from_file('./text.csv') }

  context 'when correct data' do
    it 'return minimum' do
      expect(csv_stats.minimum(csv_table)).to be 43_829
    end
    it 'return maximum' do
      expect(csv_stats.maximum(csv_table)).to be 7_599_647
    end
    it 'return unbuased sample variance' do
      expect(csv_stats.unbiased_sample_variance(csv_table)).to be
      1_840_925_337_586.011_7
    end
  end

  context 'when incorrect data' do
    it { expect(csv_stats.table_from_file('./notext.csv')).to be(-1) }
  end
end
