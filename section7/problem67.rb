file = File.open("067_triangle.txt")

target = []
file.readlines.each do |arr|
  arr = arr.split(" ").map(&:to_i)
  target << arr
end

def solution(arr)
  (arr.size-2).downto(0) do |i|
    (0).upto(i) do |j|
      arr[i][j] += [arr[i + 1][j], arr[i + 1][j + 1]].max
    end
  end
  return arr[0][0]
end
  
solution(target)
p target
