class Team
  attr_accessor :name, :city
  @@league = 'MLB'
  def initialize(name, city)
    @name = name
    @city = city
  end
  def self.league
    @@league
  end
  def self.league=(mib)
    @@league = mib
  end

end
nym = Team.new('Mets', 'NYC')
Team.league = 'MILB'
puts Team.league
