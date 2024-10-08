def who_is_bigger(a, b, c)
  return "nil detected" if [a, b, c].include?(nil)

  if a > b && a > c
    "a is bigger"
  elsif b > a && b > c
    "b is bigger"
  else
    "c is bigger"
  end
end
  
def reverse_upcase_noLTA(str)
  str.reverse.upcase.delete('LTA')
end
  
# def reverse_upcase_noLTA(str)
#   arr = []

#   str.split(" ").each do |s|
#       newString = s.sub('a', '').sub('l', '').sub('t', '')
#       arr.push(newString.upcase)
#   end

#   return arr.join(" ").reverse
# end
# puts reverse_upcase_noLTA

def array_42(arr)
  arr.include?(42)
end
  
def magic_array (array)
  array.flatten.uniq.map { |item| item * 2 }.reject { |item| item % 3 == 0 }.sort
end