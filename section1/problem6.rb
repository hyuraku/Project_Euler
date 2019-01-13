class Problem6
  def initialize(start, goal)
    @start = start
    @goal = goal

    @sum_of_squares = 0
    @square_of_sum = 0
  end

  def run
    (@start..@goal).each do |i|
      @sum_of_squares += i * i
      @square_of_sum += i
    end
    @square_of_sum * @square_of_sum - @sum_of_squares
  end
end

p Problem6.new(1, 100).run
