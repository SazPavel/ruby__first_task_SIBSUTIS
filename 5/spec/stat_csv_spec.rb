# frozen_string_literal: true

require 'rspec'
require './stat_csv.rb'

RSpec.describe StatCsv do
  let(:csv_stats) { StatCsv.new }

  describe 'minimum' do
    context 'when correct data' do
      it 'return minimum' do
        expect(csv_stats.minimum).to be 43_829
      end
    end
  end

  describe 'maximum' do
    context 'when correct data' do
      it 'return maximum' do
        csv_stats.table_from_file('./text.csv')
        expect(csv_stats.maximum).to be 7_599_647
      end
    end
  end

  describe 'unbuased sample variance' do
    context 'when correct data' do
      it 'return unbuased sample variance' do
        csv_stats.table_from_file('./text.csv')
        expect(csv_stats.unbiased_sample_variance).to be
        1_840_925_337_586.0117
      end
    end
  end

  describe 'mean' do
    context 'when correct data' do
      it 'return mean' do
        csv_stats.table_from_file('./text.csv')
        expect(csv_stats.mean).to be
        1_616_668
      end
    end
  end

  describe 'table_from_file' do
    context 'when incorrect data' do
      it { expect(csv_stats.table_from_file('./notext.csv')).to be(-1) }
    end
  end
end
