class Array
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
  end
end

tar_list_1= (0..2).to_a.product((0..2).to_a)
tar_list_1 = ((0..2).to_a).repeated_combination(2).to_a
p tar_list_1
tar_list_2 = tar_list_1.map{|i| i.swap!(0,1)}
p tar_list_2
tar_list_1 = (tar_list_1.concat(tar_list_2)).uniq
p tar_list_1
def check(a,b,c)
  tar = [a,b,c].sort
  tar[0] + tar[1] == tar[2]
end
tar_list_1= (0..50).to_a.product((0..50).to_a)
ways = 0

tar_list_1.each do |a_i|
  tar_list_1.each do |b_i|
    b_i = (b_i.clone).swap!(0,1)
    if b_i != [0,0] && a_i != [0,0] && a_i != b_i
      a_length = (a_i[0]**2 + a_i[1]**2)
      b_length = (b_i[0]**2 + b_i[1]**2)
      c_length = ((a_i[0]- b_i[0])**2 + (a_i[1] - b_i[1])**2)
      if a_i == [1,0]
        # p [a_i, b_i]
        # p [a_length, b_length, c_length]
      end
      if check(a_length, b_length, c_length) || (a_i[1] == 0 && b_i[0] == 0)
        p [a_i, b_i]
        # p [a_length, b_length, c_length]
        ways += 1
      end
    end
  end
end

p ways/2

# && c_length != b_length && a_length != b_length && a_length != c_length
