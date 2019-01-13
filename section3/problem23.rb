def perf(n)
  divisors = []
  for i in 1..Math.sqrt(n)
    divisors << i << n/i  if n % i == 0
  end
  divisors.uniq.inject(:+)  > n * 2
end

a_list = []

for n in 1..28123
  a_list << n if perf(n)
end

a_list = (a_list.repeated_combination(2).map { |e| e.first + e.last if e.first + e.last <= 28123}).compact.uniq.sort
# p a_list

a = (1..28123).to_a - a_list
p a
p a.sum

class Problem23
  def initialize
    @start = 1
    @limit = 28123
    @list = []
  end

  def run
    (@start..@limit).each do |i|
      @list<< i if perf(i)
    end
    (@start..@limit).to_a.sum - make_list(@list).sum
  end

  private

  def perf(n)
    divisors = []
    (1..Math.sqrt(n)).each do |i|
      divisors << i << n/i  if n % i == 0
    end
    divisors.uniq.inject(:+)  > n * 2
  end

  def make_list(list)
    (list.repeated_combination(2).map { |e| e.first + e.last if e.first + e.last <= @limit}).compact.uniq.sort
  end
end

p Problem23.new().run
