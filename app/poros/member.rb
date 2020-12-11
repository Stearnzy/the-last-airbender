class Member
  attr_reader :name, :photo, :allies, :enemies, :affiliation

  def initialize(member_data)
    @name = member_data[:name]
    @photo = member_data[:photoUrl] ? member_data[:photoUrl] : "Not Pictured"
    @allies = member_data[:allies] ? member_data[:allies] : "No Allies"
    @enemies = member_data[:enemies] ? member_data[:enemies] : "No Enemies"
    @affiliation = member_data[:affiliation] ? member_data[:affiliation] : "No Affiliation"
  end
end