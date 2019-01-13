require 'prime'

class Problem7
  def initialize
    @time = 0
    @start = 2
    @goal = 10 ** 7
    @ans = 0
  end

  def run
    (@start..@goal).each do |tar|
      if (tar).prime?
        @time += 1
      end
      if @time == 10001
        @ans = tar
        break
      end
    end
    @ans
  end
end

p Problem7.new().run
