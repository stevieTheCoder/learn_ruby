def echo(x) 
    return x
end

def shout(x)
    return x.upcase
end

def repeat(x, y = 2)
    word = (x + " ") * y
    word.strip!
    return word
end

def start_of_word(x, y)
    last = y - 1
    return x[0..last]
end

def first_word(x)
    first = x.split
    return first[0]
end

def titleize title
  noise = %w(and by from of or over the to)
  words = title.downcase.split(' ')
  words.map! do |w|
    if noise.include? w
      w
    else
      w.capitalize
    end
  end
  words[0].capitalize!
  words.join(' ')
end
