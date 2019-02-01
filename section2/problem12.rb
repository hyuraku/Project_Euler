require "prime"

a_list = []

def number_divisors(n)
  Prime.prime_division(n).map {|p, e| e + 1 }.inject(&:*)
end

2.upto(10 ** 50).each do |tar|
  total = tar * (tar + 1) /2
  total_a = number_divisors(total)
  if total_a > 500
    p "#{total} is the target"
    break
  end
end
