class Member
  attr_reader :name, :photo, :affiliation

  def initialize(member_data)
    @name = member_data[:name]
    @data = member_data
    @photo = member_data[:photoUrl] ? member_data[:photoUrl] : "Not Pictured"
    @enemies = member_data[:enemies] ? member_data[:enemies] : "No Enemies"
    @affiliation = member_data[:affiliation] ? member_data[:affiliation] : "No Affiliation"
  end

  def allies
    @data[:allies].join(', ')
  end

  def enemies
    @data[:enemies].join(', ')
  end
end