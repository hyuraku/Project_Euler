class Problem9
  def initialize
    @ans = 0
  end
  def run
    1.upto(499).each do |b_i|
      1.upto(1000-b_i).each do |a_i|
        if check_number(a_i, b_i)
          @ans = (a_i)*(b_i)*(1000 - a_i - b_i)
          break
        end
      end
    end
    @ans
  end

  private

  def check_number(a, b)
    a ** 2 + (1000 - a - b) **2 == b ** 2
  end
end

p Problem9.new().run
