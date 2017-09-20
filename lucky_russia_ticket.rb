def is_lucky(ticket)

  return false if ticket.nil? || ticket.empty?

  if ticket.gsub(/[:alpha:]/, "").length != ticket.length
    return false
  end

  return ticket[0..2].split("").inject(0) {|sum, digit| sum += digit.to_i} == ticket[3..5].split("").inject(0) {|sum, digit| sum += digit.to_i}
end

p is_lucky("9a9999")
