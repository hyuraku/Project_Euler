require "prime"

def prime_check(n)
  if Prime.prime?(n)
    return n
  end
end

max_len = 0
ans = 0

goal = 100 * 10000

prime_list = ((1..goal).map{|i| prime_check(i)}).compact

(1..prime_list.size).each do |length|
  (0..(prime_list.size - length + 1)).each do |start|
    if prime_check(prime_list[start..(length+start)].sum) && prime_list[start..(length+start)].sum < goal
      if max_len < prime_list[start..(length+start)].size
        max_len = prime_list[start..(length+start)].size
        ans = prime_list[start..(length+start)].sum
      end
    end
  end
end

p [max_len,ans]
