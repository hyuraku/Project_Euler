require 'parallel'

goal = 100 * 10000
# goal = 100 * 1

# tar_list =  ((1..goal).to_a).combination(2).to_a.map{ |a,b| [a,b] if a *2 < b}.compact

tar_list = Parallel.map(((1..goal).to_a).combination(2).to_a, in_theads: 2){ |a,b| [a,b] if a *2 <= b}.compact
# p tar_list
tar_hash = {}

tar_list.each do |i|
  if !tar_hash.values.include?(i[0]/i[1].to_f)
    tar_hash[i] = i[0]/i[1].to_f
    # p tar_hash
  end
end

tar_hash= tar_hash.sort{|(k1, v1), (k2, v2)| v1 <=> v2}
# p tar_hash
Parallel.each_with_index(tar_hash, in_theads: 2) do |i,index|
  if i[0] == [3,7]
    p i
    p tar_hash[index-1]
    break
  end
end
