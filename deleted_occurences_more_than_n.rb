def delete_nth(order,max_e)
  cleaned_arr = []
  order.each do |ele|
    if cleaned_arr.count(ele) < max_e
      cleaned_arr.push(ele)
    end
  end
  cleaned_arr
end
