require 'rails_helper'

describe 'Search Facade Testing' do
  it '#members(nation)' do
    expect(SearchFacade.members('fire_nation')).to be_an Array
  end

  it '#search_conversion(nation)' do
    expect(SearchFacade.search_conversion('fire_nation')).to eq('Fire+Nation')
  end
end