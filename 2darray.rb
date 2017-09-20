arr = Array.new(6)

for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

sums = []

for i in (0..arr.length - 3)
	for j in (0..arr[0].length - 3)
		current_hourglass_sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
		sums.push(current_hourglass_sum)
	end
	i += 3
end

puts sums.max