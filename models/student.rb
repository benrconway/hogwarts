require_relative('../db/sql_runner')
require_relative('house')

class Student

  attr_accessor(:first_name, :second_name, :house_id, :age)
  attr_reader(:id)

  def initialize(info)
    @id = info["id"].to_i if info["id"]
    @first_name = info["first_name"]
    @second_name = info["second_name"]
    @house_id = info["house_id"].to_i
    @age = info["age"].to_i
  end

  def save
    sql = "
      INSERT INTO students (
        first_name,
        second_name,
        house_id,
        age
      ) VALUES (
        $1, $2, $3, $4
      )
        RETURNING id;"
    values = [@first_name, @second_name, @house_id, @age]
    student = SqlRunner.run(sql, values)
    @id = student[0]["id"].to_i
  end

  def find
    sql = "SELECT * FROM students WHERE id = $1"
    student = SqlRunner.run(sql, [@id])
    result = Student.map_items(student)
    return result
    # return Student.map_items(SqlRunner.run(sql, [@id]))
  end

  def self.all
    sql = "SELECT * FROM students;"
    return Student.map_items(SqlRunner.run(sql))
  end



  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql, [])
  end

  def delete
    sql = "DELETE FROM students WHERE id = $1;"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.map_items(student_hash)
    return student_hash.map {|student| Student.new(student)}
  end

  def full_name
    return "#{@first_name} #{@second_name}"
  end

  def sorting_hat
    @house_id = House.all.sample.id
  end

  def find_house
    sql = "SELECT * FROM houses WHERE id = $1"
    result = House.map_items(SqlRunner.run(sql, [@house_id]))
    return result[0]
  end

  def delete()
    sql = "DELETE * FROM students WHERE id = $1"
    SqlRunner.run(sql, [@id])
  end

  def self.delete_all()
      sql = "DELETE FROM students;"
      SqlRunner.run(sql)
    end

   def update()
      sql = "UPDATE students SET (first_name, second_name, house, age) = ($1, $2, $3, $4) WHERE id = $5"
      values = [@first_name, @second_name, @house_id, @age, @id]
      SqlRunner.run(sql, values)
    end

end
