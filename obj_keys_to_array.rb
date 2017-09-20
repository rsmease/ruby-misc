def list_to_array(list)
	return list.map {|object| object.flatten}
end

lists = [
  {'value'=>1, 'next'=>{'value'=>2, 'next'=>{'value'=>3, 'next'=>nil}}},
  {'value'=>"string", 'next'=>nil},
  {'value'=>true, 'next'=>{'value'=>false, 'next'=>{'value'=>"true", 'next'=>{'value'=>"false", 'next'=>nil}}}},
  {'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>{'value'=>1, 'next'=>nil}}}}}},
  {'value'=>"foo", 'next'=>{'value'=>"bar", 'next'=>nil}}
]

p list_to_array(lists[0])