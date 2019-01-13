class Problem2
  def initialize(n,total)
    @finab_list = [1,2]
    @first_init = 3
    @last_init = n
    @total_limit = total
    @total_ans = 0
  end

  def run
    find_last(@first_init, @last_init, @finab_list, @total_limit)
    @finab_list.pop()
    cal_total_ans(@finab_list, @total_ans)
  end

  private

  def finab(x,a_list)
    tar = a_list[x-2].clone + a_list[x-3].clone
    a_list.push(tar)
    tar
  end

  def find_last(first, last, list, limit)
    (first..last).each do |ele|
      finab(ele,list)
      if list.last > limit
        break
      end
    end
  end

  def cal_total_ans(f_list, total)
    f_list.each do |ele|
      if ele.even?
        total += ele
      end
    end
    total
  end


end

p Problem2.new(1000, 4000000).run
