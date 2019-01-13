class Problem33
  def initialize(start, goal)
    @start = start
    @goal = goal
    @sum = []
  end

  def run
    cal(@start, @goal)
  end

  private

  def cal(start, goal)
    a_list = (start..goal).to_a
    maked_list = a_list.combination(2).to_a
    maked_list.each do |one_list|
      if check_same_number(one_list.first, one_list.last) && one_list.first%5 != 0
        maked_div = int_to_str(one_list.first, one_list.last).group_by{|i| i}.select{|k,v| v.one?}.keys
        # p maked_div
        if divide(maked_div.first, maked_div.last) == divide(one_list.first, one_list.last)
          @sum << one_list
        end
      end
    end
    @sum
  end

  def check_same_number(a, b)
    list = int_to_str(a, b)
    list.uniq.size == 3 && a%10 != b%10
  end

  def int_to_str(a,b)
    list = []
    list << a.to_s.split('')
    list << b.to_s.split('')
    list.flatten
  end

  def divide(a,b)
    a.to_i/b.to_f
  end
end

p Problem33.new(10, 99).run
