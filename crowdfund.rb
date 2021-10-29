class Project

  attr_accessor :name
  attr_reader :inititalf, :targetf
  
  def initialize(name, inititalf, targetf)
    @name = name
    @inititalf = inititalf
    @targetf = targetf
  end

  def totalf
    return @targetf - @inititalf
  end

  def to_s
    "#{@name} has $#{@inititalf} in funding towards a goal of $#{@targetf}."
  end

  def loss
    @inititalf -= 15
    puts "#{name} has lost funds!"
  end

  def gain
    @inititalf += 25
    puts "#{name} has gained funds!"
  end
end


p1 = Project.new("Project 1", 500, 3000)
p2 = Project.new("Project 2", 5000, 25000)
p3 = Project.new("Project 3", 100, 1000)

puts p3.inititalf
puts p3.totalf