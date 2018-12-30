total = 0

(2..9999999).each do |ele|
  ele_list = (ele.to_s).split('')
  ele_fif_sum = (ele_list.map{|i| (i.to_i) ** 5}).sum
  if ele == ele_fif_sum
    p ele
    total += ele
  end
end

p total
