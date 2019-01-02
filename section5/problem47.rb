require "prime"


def number_divisors(n)
  Prime.prime_division(n)
end

def len_check(n)
  list = number_divisors(n)
  list.flatten.size
end

goal = 100 ** 3

(647..goal).each do |i|
  if len_check(i) == 8
    if len_check(i+1) == 8
      if len_check(i+2) == 8
        if len_check(i+3) == 8
          p i
          break
        end
      end
    end
  end
end
