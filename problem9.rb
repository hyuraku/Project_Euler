for c_i in 1..499
  for a_i in 1..(1000-c_i)
    if a_i ** 2 + (1000 - a_i - c_i) **2 == c_i * c_i
      p (a_i)*(1000 - a_i - c_i)*(c_i)
    end
  end
end
