class Basketball
  @@league = 'NBA'
  def initalize(team)
    @team = team
  end
end

class Team
  attr_reader :city, :coach, :owner, :star
  def initialize(city, coach, owner, star)
    @city, @coach, @owner, @star = city, coach, owner, star
  end
  def move
