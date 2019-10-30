#!/usr/bin/env ruby

def palindromes(string)
  palindromes_array = []
  string_size = string.length
  for i in (0..string_size - 1)
    for j in (i + 1..string_size-1)
      if string[i..j] == string[i..j].reverse
        palindromes_array << string[i..j]
      end
    end
  end
  palindromes_array
end

abc = 'abbacdefacabbadabcdbb'
puts palindromes abc