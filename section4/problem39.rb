goal = 1000
ans = 0
max_way = 0

(12..goal).each do |total_i|
  max_way_i = 0
  (1..total_i).each do |a_i|
    if a_i < total_i - a_i
      (1..(total_i - a_i)).each do |b_i|
        c_i = total_i - a_i - b_i
        if a_i > b_i && a_i > c_i && b_i > c_i
          if a_i ** 2 == b_i ** 2 + c_i ** 2
            max_way_i += 1
          end
        end
      end
    end
  end
  if max_way_i > max_way
    max_way = max_way_i
    ans = total_i
  end
end

p ans
