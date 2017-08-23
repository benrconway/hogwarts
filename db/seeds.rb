require_relative('../models/student')
require_relative('../models/house')
require_relative('sql_runner')
require('pry')

gryffindor = House.new({
  "name" => "Gryffindor",
  "logo" => "http://vignette1.wikia.nocookie.net/harrypotter/images/8/8e/0.31_Gryffindor_Crest_Transparent.png/revision/latest?cb=20161124074004"})
hufflepuff = House.new({
  "name" => "Hufflepuff",
  "logo" => "https://vignette2.wikia.nocookie.net/harrypotter/images/5/50/0.51_Hufflepuff_Crest_Transparent.png/revision/latest?cb=20161020182518"})
ravenclaw = House.new({
  "name" => "Ravenclaw",
  "logo" => "http://vignette2.wikia.nocookie.net/harrypotter/images/2/29/0.41_Ravenclaw_Crest_Transparent.png/revision/latest?cb=20161020182442"})
slytherin = House.new({
  "name" => "Slytherin",
  "logo" => "http://vignette4.wikia.nocookie.net/harrypotter/images/d/d3/0.61_Slytherin_Crest_Transparent.png/revision/latest?cb=20161020182557"})
gryffindor.save
hufflepuff.save
ravenclaw.save
slytherin.save

harry_potter = Student.new ({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "house" => gryffindor.id,
  "age" => 11
})
harry_potter.save

hermione_granger = Student.new ({
  "first_name" => "Hermione",
  "second_name" => "Granger",
  "house" => gryffindor.id,
  "age" => 11
})
hermione_granger.save

draco_malfoy = Student.new ({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "house" => slytherin.id,
  "age" => 11
})
draco_malfoy.save

luna_lovegood = Student.new ({
  "first_name" => "Luna",
  "second_name" => "Lovegood",
  "house" => ravenclaw.id,
  "age" => 12
})
luna_lovegood.save

ron_weasley = Student.new ({
  "first_name" => "Ron",
  "second_name" => "Weasley",
  "house" => gryffindor.id,
  "age" => 11
})
ron_weasley.save

cedric_diggory = Student.new ({
  "first_name" => "Cedric",
  "second_name" => "Diggory",
  "house" => hufflepuff.id,
  "age" => 14
})
cedric_diggory.save
binding.pry
nil
