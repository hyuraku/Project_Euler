tar_list = (0..2).to_a.repeated_combination(2)

def check(a,b,c)
  tar = [a,b,c].sort
  tar[0] + tar[1] == tar[2]
end

ways = 0

tar_list.each do |a_i|
  tar_list.each do |b_i|
    a_length = (a_i[0]**2 + a_i[1]**2)
    b_length = (b_i[0]**2 + b_i[1]**2)
    c_length = ((a_i[0]- b_i[1])**2 + (a_i[1] - b_i[0])**2)
    if check(a_length, b_length, c_length)
      p [a_length, b_length, c_length]
      ways += 1
    end
  end
end

p ways

# && c_length != b_length && a_length != b_length && a_length != c_length
