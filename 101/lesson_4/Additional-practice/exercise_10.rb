munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.to_a.map! do |index|
  index[2] = "age_group"
  if index[1] > 0 || index[1] < 18
     index[3] = "kid"
  elsif index[1] > 17 || index[1] < 65
    index[3] = "adult"
  else
    index[3] = "senior"
  end
end

munsters.to_h

puts munsters
