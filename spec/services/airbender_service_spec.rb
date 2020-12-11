require 'rails_helper'

describe AirbenderService do
  context '#characters' do
    it 'returns member info' do
      search = AirbenderService.characters('fire_nation')
      expect(search).to be_an Array
      expect(search.first).to be_a Hash
      member_info = search.second

      expect(member_info).to have_key :name
      expect(member_info[:name]).to be_a(String)

      expect(member_info).to have_key :allies
      expect(member_info[:allies]).to be_an Array

      expect(member_info).to have_key :enemies
      expect(member_info[:enemies]).to be_an Array

      expect(member_info).to have_key :photoUrl
      expect(member_info[:photoUrl]).to be_a String

      expect(member_info).to have_key :affiliation
      expect(member_info[:affiliation]).to be_a String
    end
  end
end
