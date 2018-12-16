require "prime"

a_list = []

def number_divisors(n)
  Prime.prime_division(n).map {|p, e| e + 1 }.inject(&:*)
end

for tar in 2..10 ** 5
  total = tar * (tar + 1) /2
  total_a = number_divisors(total)
  if total_a > 500
    p "#{total} is the target"
    break
  end
end
