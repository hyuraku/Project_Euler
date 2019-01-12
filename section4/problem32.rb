def int_to_str(n)
  n.to_s.split('')
end

def check_double_one(n)
  return nil if int_to_str(n).include?("0")
  int_to_str(n).size == int_to_str(n).uniq.size
end

def check_double_two(a,b)
  list = []
  [a,b].each do |i|
    list << int_to_str(i)
  end
  list.flatten.uniq.size == list.flatten.size
end

def check_formula(a,b)
  list = []
  c = a * b
  [a,b,c].each do |n|
    list << int_to_str(n)
  end
  return nil if list.flatten.uniq.size != list.flatten.size
  list_i = list.flatten
  !list_i.include?("0") && list_i.size == 9
end

def make_list(a,b)
  (a..b).map{|i| i if check_double_one(i)}.compact
end

first_list = (1..9).to_a
second_list = make_list(10,99)
third_list = make_list(100,999)
forth_list = make_list(1000,9999)
sum_list = []

def two_function(a_list, b_list,c_list)
  a_list.each do |a_i|
    b_list.each do |b_i|
      if check_double_two(a_i,b_i)
        if check_formula(a_i,b_i)
          p [a_i, b_i, a_i*b_i]
          c_list << a_i*b_i
        end
      end
    end
  end
end

two_function(first_list, forth_list, sum_list)
two_function(second_list, third_list, sum_list)
p sum_list.uniq.sum
