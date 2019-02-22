require "prime"

a_list = []
total = 0

class Problem21
  def initialize(start, goal)
    @start = start
    @goal = goal
    @total = 0
  end

  def run
    @start.upto(@goal).each do |ele|
      list_sum = divisor(ele).sum - ele
      if ele == divisor(list_sum).sum - list_sum && ele != list_sum
        @total += ele
      end
    end
    @total
  end

  def number_divisors(n)
    Prime.prime_division(n)
  end

  def divisor_sub(p, q)
    (0..q).reduce([]) {|xs, i| xs + [p ** i]}
  end

  def divisor(n)
    number_divisors(n).reduce([1]) {|ys, xs|
    ys.product(divisor_sub(*xs)).map {|x, y| x * y}
    }.sort()
  end
end

p Problem21.new(2, 10000).run
