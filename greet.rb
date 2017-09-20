def greet(name)
  if name.nil? or name === ""
    return nil
  else
    return "hello " + name + "!"
  end
end
