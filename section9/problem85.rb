
def count_square(width, height)
 (width+1)*(width) * (height+1) *(height) / 4
end

LIMIT_NUM = 2000000

x = (30..100)
total = 108

ans = 0
diff =2000000
x.each do |i|
  j = total - i
  diff_a = (LIMIT_NUM - count_square(j,i) ).abs
  if diff_a < diff
    p [diff_a,diff]
    diff = diff_a
    ans = i
  end
end
p ans
p (total -ans) * ans
p (2000000-diff)


# 1978230

# 44 , 107-44
