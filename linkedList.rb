#it returns value of node at specified index
#it can unshift new value
#it can push new value
#it can pop existing value

class LinkedList

  attr_reader :container

  def initialize()
    @container = []
  end

  def return_value(node)
    return @container[node-1][1]
  end

  def push(value)
    @container << [value, @container[@container.count]]
  end

  def shift(value)
    first = @container.drop(1)
    return first
  end

  def unshift(value)
    return [value, @container[0]].concat(@container.map {|item| item[1] = @container[item + 1]})
  end

  def pop(value)
    remaining = @container.drop(@container.length - 1)
    last = @container
    last[1] = nil
    @container = remaining
    @container[-1][1] = nil
    return last
  end

end

my_ll = LinkedList.new
my_ll.push(4)
my_ll.push(2)
p my_ll.container
