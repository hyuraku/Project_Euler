require 'set'

max = 1000000
# max = 8
num = 0

(2..max).each do |i|
  num += 1
  (2...i).each do |j|     
    if i.gcd(j) == 1
      num += 1
    end
  end
end

p num
