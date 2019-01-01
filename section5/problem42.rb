a_list=(1..100).map{|i| i*(i+1)/2}
Alph = ("a".."z").to_a

ans = 0

File.open("p042_words.txt","r") do |file|
  file = file.read
  word_list = file.split(',')
  word_list.each do |word|
    score = 0
    (word.split('')).each do |letter|
      if letter != "\""
        Alph.each_with_index do |tar,index|
          one_letter = letter.downcase
          if tar == one_letter
            score += (index + 1)
          end
        end
      end
    end
    if a_list.include?(score)
      ans += 1
    end
  end
end

p ans
