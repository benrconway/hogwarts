require_relative('../models/student')
require_relative('sql_runner')
require('pry')

harry_potter = Student.new ({
  "first_name" => "Harry",
  "second_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 11
})
harry_potter.save

hermione_granger = Student.new ({
  "first_name" => "Hermione",
  "second_name" => "Granger",
  "house" => "Gryffindor",
  "age" => 11
})
hermione_granger.save

draco_malfoy = Student.new ({
  "first_name" => "Draco",
  "second_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 11
})
draco_malfoy.save

luna_lovegood = Student.new ({
  "first_name" => "Luna",
  "second_name" => "Lovegood",
  "house" => "Ravenclaw",
  "age" => 12
})
luna_lovegood.save

ron_weasley = Student.new ({
  "first_name" => "Ron",
  "second_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 11
})
ron_weasley.save

cedric_diggory = Student.new ({
  "first_name" => "Cedric",
  "second_name" => "Diggory",
  "house" => "Hufflepuff",
  "age" => 14
})
cedric_diggory.save
binding.pry
nil
