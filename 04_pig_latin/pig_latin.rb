VOWELS     = %w[a e i o u]
CONSONANTS = ('a'..'z').to_a - VOWELS

def pig_out word,regexp
  word.split(/#{regexp}/).reject(&:empty?).reverse.join+'ay'
end

def translate input
  words = input.split(' ')
  words.map! do |pig|
    if /^[#{VOWELS}]/ === pig
      pig += 'ay'
    elsif /.*qu/ === pig
      pig = pig_out pig, '(.*qu)'
    else
      pig = pig_out pig, "(^[#{CONSONANTS}]*)"
    end
  end
  words.join(' ')
end