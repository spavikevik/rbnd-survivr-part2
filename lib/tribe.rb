class Tribe
  attr_reader :name, :members

  def initialize(options = {})
    @name = options[:name]
    @members = options[:members]
    puts "Created tribe #{@name} with members #{@members}."
  end

  def tribal_council(options = {})
    @members.select {|member| member != options[:immune]}.sample
  end

  def to_s
    @name
  end
end
