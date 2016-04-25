class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(finalists)
    votes_per_finalist = Hash[finalists.map {|finalist| [finalist, 0]}]
    @members.each do |member|
      votes_per_finalist[finalist = votes_per_finalist.keys.sample] += 1
      puts "#{member} voted for #{finalist}."
    end
    return votes_per_finalist
  end

  def report_votes(votes_per_finalist)
    votes_per_finalist.each do |finalist, votes|
      puts "#{finalist} has #{votes} votes.".blue
    end
    return
  end

  def announce_winner(votes_per_finalist)
    puts "\n#{votes_per_finalist.max_by{|finalist, votes| votes}.first} has won!".red
    return votes_per_finalist.max_by{|finalist, votes| votes}.first
  end
end
