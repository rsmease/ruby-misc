def longest_palindrome(s)
  scan_size = s.size
  while scan_size > 1
    #use scan_size to search for palindromes
    #return if palindrome is found
    start = 0
    stop = start + scan_size
    until stop > s.size
      check_sub = s[start...stop]
      return scan_size if palindrome?(check_sub)
      start += 1
      stop += 1
    end
    start = 0
    scan_size -= 1
  end
  #should return 0 for an empty string
  scan_size
end

def palindrome?(word)
  word == word.reverse
end

p longest_palindrome("peed")
