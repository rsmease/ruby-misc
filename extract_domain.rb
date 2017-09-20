def domain_name(url)
  filter = url.gsub("http://", "").gsub("https://", "").gsub("www.", "")
  domain = []
  p filter
  filter.chars.each do |char|
    if char == "/" || char == "."
      break;
    else
      domain << char
    end
  end
  domain.join("")
end

p domain_name("http://www.zombie-bites.com")
