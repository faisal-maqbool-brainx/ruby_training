#!/usr/bin/env ruby

def palindrome(string)
  return string == string.reverse
end

palin = 'madam'
nonpalin = 'xyzabc'
puts palin +" is palindrome: #{palindrome(palin)}"
puts nonpalin +" is palindrome:#{palindrome(nonpalin)}"



