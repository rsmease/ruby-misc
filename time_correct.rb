def time_correct(t)
  unless t === nil or t === ""
  	now = Time.parse(t)
    puts now
    return t.strftime("%H:%M:%S")
  end
  return t
end

p time_correct("09:10:01")