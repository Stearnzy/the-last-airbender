require 'rails_helper'

describe 'Search Facade Testing' do
  it '#members(nation)' do
    expect(SearchFacade.members('fire_nation')).to be_an Array
  end
end