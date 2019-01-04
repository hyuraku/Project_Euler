require "prime"

def prime_check(n)
  if Prime.prime?(n)
    1
  else
    0
  end
end

ans = 0

sum = 0

a_list = ((1..100000).map{|i| i**2 if i%2==1 }).compact
use_list = []

a_list.each do |ele|
  if ele == 1
    use_list.push(ele)
  else
    diff = (Math.sqrt(ele) - 1).to_i
    use_list.push(ele, ele - diff, ele - diff*2, ele - diff*3)
    [ele, ele - diff, ele - diff*2, ele - diff*3].each do |list_i|
      sum += prime_check(list_i)
    end
    if sum/(use_list.size).to_f < 0.1
      p Math.sqrt(ele)
      break
    end
  end
end
