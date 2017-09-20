#INSTRUCTIONS
# -Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
# -A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
# -Every smiling face must have a smiling mouth that should be marked with either ) or D.
# No additional characters are allowed except for those mentioned.
# Valid smiley face examples:
# :) :D ;-D :~)
# Invalid smiley faces:
# ;( :> :} :]

def count_smileys(arr)
  return 0 if arr.empty?
  valid = {"eyes"=>[":", ";"], "nose"=>["-", "~"], "mouth"=>[")", "D"]}
  valid_two = arr.select { |smile| smile.size == 2 }
  valid_three = arr.select { |smile| smile.size == 3 }

  valid_smiles = []

  valid_two.each do |smile|
    if valid["eyes"].include?(smile[0]) &&
       valid["mouth"].include?(smile[1])
       valid_smiles << smile
     end
  end

  valid_three.each do |smile|
    if valid["eyes"].include?(smile[0]) &&
       valid["nose"].include?(smile[1]) &&
       valid["mouth"].include?(smile[2])
       valid_smiles << smile
     end
  end

  valid_smiles.size
end

p count_smileys([':)', ';(', ';}', ':-D'])
