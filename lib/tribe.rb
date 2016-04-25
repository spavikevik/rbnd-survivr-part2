class Tribe
  attr_reader :name, :members

  def initialize(options = {})
    @color = options[:color] || :yellow
    @name = options[:name].send(@color)
    @members = options[:members]
    puts "Created tribe #{@name} with members #{@members}."
  end

  def tribal_council(options = {})
    @members.delete(@members.select {|member| member != options[:immune]}.sample)
  end

  def to_s
    @name
  end
end
