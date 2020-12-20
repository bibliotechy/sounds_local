require 'spec_helper'


RSpec.describe MetroSearchHelper, type: :helper do

  describe '#location_query' do

    it 'returns a hash with :name when :q param exists' do
      params = { :q => 'Philadelphia' }
      expect(helper.location_query(params)).to eql(:query => 'Philadelphia')
    end

    it 'returns a hash with geo coordinates when :geo param exists' do
      params = { :geo => '39.986855,-75.196' }
      expect(helper.location_query(params)).to eql(:location => 'geo:39.986855,-75.196')
    end

    it 'returns only :name when :name and :geo param exist' do
      params = { :q => 'Philadelphia', :geo => '39.986855,-75.196' }
      expect(helper.location_query(params)).to eql(:query => 'Philadelphia')
    end
  end

  describe '#build_query' do
    it 'returns only :name when :name and :geo param exist' do
      params = { :q => 'Philadelphia' }
      expect(helper.build_query(params)).to eql(:query => 'Philadelphia', :per_page => 100)
    end
  end

end