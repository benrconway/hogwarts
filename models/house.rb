require_relative("../db/sql_runner")

class House

  attr_accessor(:name)
  attr_reader(:id)

  def initialize(info)
    @id = info["id"].to_i if info["id"]
    @name = info["name"]
  end

  def save
    sql = "INSERT INTO houses(name) VALUES ($1) RETURNING id;"
    @id = SqlRunner.run(sql, [@name])[0]["id"].to_i
  end

end
