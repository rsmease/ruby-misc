def count_arara (n)
  twos = n / 2
  if n.odd?
    return ("adak " * twos) + "anane"
  else
    result = []
    for instance in 0...twos
      result.push("adak")
    end
    return result.join(" ")
  end
end
