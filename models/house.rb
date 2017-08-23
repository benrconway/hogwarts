require_relative("../db/sql_runner")

class House

  attr_accessor(:name, :logo)
  attr_reader(:id)

  def initialize(info)
    @id = info["id"].to_i if info["id"]
    @name = info["name"]
    @logo = info["logo"]
  end

  def save
    sql = "INSERT INTO houses(name, logo) VALUES ($1, $2) RETURNING id;"
    @id = SqlRunner.run(sql, [@name, @logo])[0]["id"].to_i
  end

  def find
    sql = "SELECT * FROM houses WHERE id = $1;"
    return House.map_items(SqlRunner.run(sql, [@id]))
  end

  def self.all
    sql = "SELECT * FROM houses;"
    return House.map_items(SqlRunner.run(sql))
  end

  def self.map_items(house_hash)
    return house_hash.map {|house| House.new(house)}
  end

  def delete()
    sql = "DELETE FROM houses WHERE id = $1;"
    SqlRunner.run(sql, [@id])
  end

  def self.delete_all()
    sql = "DELETE FROM houses;"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE houses SET (name, logo) = ($1, $2) WHERE id = $3;"
    SqlRunner.run(sql, [@name, @logo, @id])
  end

end
