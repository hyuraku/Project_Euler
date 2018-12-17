require "numbers_and_words"

total = 0

(1..1000).each do |ele|
  tar = I18n.with_locale(:en){ ele.to_words hundreds_with_union: true, remove_hyphen: true }
  total = tar.gsub(' ','').size + total
end

p total
