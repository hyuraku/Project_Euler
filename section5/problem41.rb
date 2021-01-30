require "prime"

max = 7
arr = (1..max).to_a
aa = arr.permutation(max).map do |a|
  (a.join).to_i
end
aa = aa.sort{|a, b| b <=> a }
aa.each do |a|
  if Prime.prime?(a)
    p a
    break
  end
end
