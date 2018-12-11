sum_of_squares = 0
square_of_sum = 0

for i in 1..100
  sum_of_squares += i * i
  square_of_sum += i
end

p square_of_sum * square_of_sum - sum_of_squares
