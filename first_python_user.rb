def get_first_python(users)
  first_python = users.detect {|user| user[:language] === "Python"}
  if first_python.nil?
    return "There will be no Python developers"
  else
    return "#{first_python[:first_name]}, #{first_python[:country]}"
  end
end

list1 = [
  { firstName: 'Mark', lastName: 'G.', country: 'Scotland', continent: 'Europe', age: 22, language: 'JavaScript' },
  { firstName: 'Victoria', lastName: 'T.', country: 'Puerto Rico', continent: 'Americas', age: 30, language: 'C++' },
  { firstName: 'Emma', lastName: 'B.', country: 'Norway', continent: 'Europe', age: 19, language: 'Clojure' }
]

p get_first_python(list1)
