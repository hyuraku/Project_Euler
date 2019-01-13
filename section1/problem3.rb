require 'prime'

target = 600851475143

class Problem3
  def initialize(goal)
    @goal = goal
  end

  def run
    (Prime.prime_division(@goal).map {|p, e| [p] * e }.flatten).max
  end
end

p Problem3.new(target).run
