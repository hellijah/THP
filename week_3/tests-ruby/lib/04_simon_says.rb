def echo(word)
  return word
end
  
def shout(word)
  return word.upcase
end

def repeat(word, times)
  (word + ' ') * (times - 1) + word
end