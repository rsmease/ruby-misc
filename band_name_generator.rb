def band_name_generator(name)
  if name[0,1] === name[-1,1]
    return name[0,1].upcase + name[1,name.length-1] + name[1,name.length-1]
  else
    return "The " + name[0,1].upcase + name[1,name.length-1]
  end
end

p band_name_generator("alaska")
