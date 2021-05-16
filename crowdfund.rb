class Project
  def initialize(name, initfund, targfund)
    @name = name
    @init = initfund
    @targ = targfund
  end

  def to_s
    "#{@name} has $#{@init} in funding towards a goal of $#{@targ}."
  end

  def loss
    @init -= 15
    puts "#{name} has lost funds!"
  end

  def gain
    @init += 25
    puts "#{name} has gained funds!"
  end
end


p1 = Project.new("Project 1", 500, 3000)
p2 = Project.new("Project 2", 5000, 25000)
p3 = Project.new("Project 3", 100, 1000)

puts p3
