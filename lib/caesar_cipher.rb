CHARS = [*?A..?Z], [*?a..?z]

def caesar_cipher string, shift
  string.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift }.join
end

puts caesar_cipher 'What a string!', 5
# => Bmfy f xywnsl!