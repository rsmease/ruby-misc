def list(names)

  return "" if names.empty?

  flat = []
  names.each { |hash| flat.push(hash[:name]) }

  if flat.size == 1
    flat[0]
  elsif flat.size == 2
    flat.join(" & ")
  elsif flat.size == 3
    beginning = "#{flat[0]}, "
    rest = flat[1...flat.length].join(" & ")
    beginning + rest
  else
    beginning = "#{flat[0...flat.length - 2].join(", ")}, "
    rest = flat[flat.length - 2...flat.length].join(" & ")
    beginning + rest
  end
  
end
