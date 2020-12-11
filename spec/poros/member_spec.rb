require 'rails_helper'

RSpec.describe Member do
  before(:each) do
    @member = SearchFacade.members('fire_nation').second
  end

  it 'exists' do
    expect(@member).to be_a Member
    expect(@member.name).to be_a String
    expect(@member.photo).to be_a String
    expect(@member.affiliation).to be_a String
    expect(@member.allies).to be_an String
    expect(@member.enemies).to be_an String
  end

  it '#allies' do

  end

  it '#enemies' do

  end
end