class First_problem
  def initialize(start, goal)
    @start = start
    @goal = goal
    @sum = 0
  end

  def run
    (@start..(@goal-1)).each do |num|
      if num%15 == 0
        @sum += num
      elsif num%3 == 0
        @sum += num
      elsif num%5 == 0
        @sum += num
      end
    end
  @sum
  end
end

p First_problem.new(1,1000).run
