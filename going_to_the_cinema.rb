#failed random tests
def movie(card, ticket, perc)
    visits = 0
    sum = card + ticket
    card_price = ticket
    while (ticket * visits <= sum)
      visits += 1
      card_price *= perc
      sum += card_price
    end
    return visits
end
