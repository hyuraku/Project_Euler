def main
  limit_num = 1000000

  first = 1
  last = 100

  arr = (first..last)
  total_ways = 0
  arr.each do |i|
    tar_arr = (1..i).to_a
    (1..i).each do |x|
      if tar_arr.combination(x).size > limit_num
        total_ways += 1
      end
    end
  end

  p total_ways
end

main
