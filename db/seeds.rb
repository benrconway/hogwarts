require_relative('../models/student')
require_relative('../models/house')
require_relative('sql_runner')
require('pry')

gryffindor = House.new({"name" => "Gryffindor"})
hufflepuff = House.new({"name" => "Hufflepuff"})
ravenclaw = House.new({"name" => "Ravenclaw"})
slytherin = House.new({"name" => "Slytherin"})
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
