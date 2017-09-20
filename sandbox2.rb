def chain_blocks(start_val, proc1, proc2, &proc3)
  val1 = proc1.call(start_val)
  val2 = proc2.call(val1)
  val3 = proc3.call(val2)
  val3
end

proc_add_1 = Proc.new {|num| num + 1}
proc_add_2 = Proc.new {|num| num + 2}

puts chain_blocks(1, proc_add_1, proc_add_2) do |num|
  num + 3
end
