class Game
  attr_reader :tribes

  def initialize(tribe1, tribe2)
    @tribes = [tribe1, tribe2]
  end

  def add_tribe(tribe)
    @tribes << tribe
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes = []
  end

  def merge(name)
    members = @tribes[0].members + @tribes[1].members
    Tribe.new(name: name, members: members)
  end

  def individual_immunity_challenge
    return @tribes.first.members.sample
  end

end
