class Jury
  attr_accessor :members

  def initialize
    @members = []
  end

  def add_member(member)
    @members << member
  end

  def cast_votes(contestants)
    votes = Hash[contestants.map {|c| [c, 0]}]
    @members.each do |member|
      votes[c = votes.keys.sample] += 1
      puts "#{member} voted for #{c}."
    end
    return votes
  end

  def report_votes(votes)
    votes.each do |c, v|
      puts "#{c} has #{v} votes."
    end
    return
  end

  def announce_winner(votes)
    votes.max_by{|c, v| v}[0]
  end
end
