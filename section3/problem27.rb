require "prime"

def check_number(a, b)
  (a%2 == 0 && b%2== 0) || (a%3 == 0 && b%3== 0) || (a%5 == 0 && b%5== 0) || (a%11 == 0 && b%11== 0)|| (a%13 == 0 && b%13== 0)
end

def formula(n,a,b)
  n ** 2 + n * a + b
end

start = -1000
goal = 1000
max_list_size = 0
ans = {}

(start..goal).each do |a_i|
  (start..goal).each do |b_i|
    if !check_number(a_i, b_i)
      size = 0
      (0..goal).each do |n_i|
        if formula(n_i, a_i, b_i).prime?
          size += 1
        else
          break
        end
      end
      if max_list_size < size
        max_list_size = size
        ans[:a] = a_i
        ans[:b] = b_i
      end
    end
  end
end

# p max_list_size
# p ans
p ans[:a] * ans[:b]
