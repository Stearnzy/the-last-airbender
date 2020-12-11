class SearchFacade
  def self.members(nation)
    json = AirbenderService.characters(nation)

    @members = json.map do |member_data|
      Member.new(member_data)
    end
  end

  private
  
  def self.search_conversion(nation)
    nation.split('_').map { |x| x.capitalize }.join('+')
  end
end
