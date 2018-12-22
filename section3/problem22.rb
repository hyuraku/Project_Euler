Alph = ("a".."z").to_a

total = 0


File.open("p022_names.txt","r") do |file|
  file = file.read
  a_list = file.split(',')
  a_list = a_list.sort
  a_list.each_with_index do |one_word,a_list_index|
    one_word = one_word
    name_score = 0
    (1..one_word.size-2).each do |one_letter_position|
      one_letter=one_word[one_letter_position]
      Alph.each_with_index do |tar,index|
        one_letter = one_letter.downcase
        if tar == one_letter
          name_score =  index + 1 + name_score
        end
      end
    end
    if (one_word == "\"COLIN\"")
      p (a_list_index+1)
      p name_score
    end
    total = (a_list_index+1) * name_score + total
  end
end

p total
