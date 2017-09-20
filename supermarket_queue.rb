#not my solution, but brilliant!

# def queue_time(customers, n)
#   arr = Array.new(n, 0)
#   customers.each { |customer| arr[arr.index(arr.min)] += customer }
#   arr.max
# end

def queue_time(customers, n)
    durations = Array.new(n, 0)
    customers.each { |customer| durations[durations.index(durations.min)] += customer}
    durations.max
end
