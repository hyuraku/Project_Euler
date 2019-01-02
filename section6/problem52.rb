def int_to_str_list(n)
  (n.to_s).split('').sort
end

def time_check(n,a,b)
  int_to_str_list(n * a) == int_to_str_list(n * b)
end

goal = 100 ** 3

(100000..goal).each do |i|
  if time_check(i,1,2)
    if time_check(i,1,3)
      if time_check(i,1,4)
        if time_check(i,1,5)
          if time_check(i,1,6)
            p i
            break
          end
        end
      end
    end
  end
end
