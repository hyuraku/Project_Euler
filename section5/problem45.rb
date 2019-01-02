goal = 100000

t_list = (1..goal).map{ |i| i * (i+1) /2 }
p_list = (1..goal).map{ |i| i * (3*i-1)/ 2 }
h_list = (1..goal).map{ |i| i * (2*i-1)}

(t_list).each do |t_i|
  if t_i != 1 && t_i != 40755
    if p_list.include?(t_i) && h_list.include?(t_i)
      p t_i
      break
    end
  end
end
