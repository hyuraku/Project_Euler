class Problem6
  def initialize(start, goal, total)
    @start = start
    @goal = goal
    @total = total
  end

  def run
    (@start..@goal).each do |ele|
      @total  = @total  * ele / fanction(@total ,ele)
    end
    @total
  end

  private

  def greatest_commom(a, b)
    if a%b == 0
      b
    else
      greatest_commom(b,a%b)
    end
  end

end

p Problem6.new(11,20,2520).run
