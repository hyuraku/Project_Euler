require 'prime'

class Problem10
  def initialize(start, goal)
    @start = start
    @goal = goal
    @list = []
  end

  def run
    (@start..@goal).each do |i|
      if Prime.prime?(i)
        @list << i
      end
    end
    @list.sum
  end
end

p Problem10.new(1, 2000000).run
