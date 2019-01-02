require "prime"

ans = 0

def prime_check(n)
  Prime.prime?(n)
end

def int_to_str(n)
  n.to_s.split('').sort
end

(1001..9998).each do |ele|
  ele_sort = int_to_str(ele)
  (1..5000).each do |diff|
    lower = ele - diff
    higher = ele + diff
    if lower > 1000 && higher < 10000
      if prime_check(ele)
        if prime_check(lower) && prime_check(higher)
          if ele_sort == int_to_str(lower) && ele_sort == int_to_str(higher)
            p [lower, ele, higher]
            ans = [lower, ele, higher]
          end
        end
      end
    end
  end
end
