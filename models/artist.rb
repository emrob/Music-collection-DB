require('pg')
require_relative("./album")
require_relative("../db/runner")

class Artist


  attr_reader :name, :id

def initialize(options)
  @name = options['name']
  @id = options['id'].to_i

end

def save()
  sql = "INSERT INTO artists (name) VALUES ($1) RETURNING id"
  values = [@name]
  @id = SqlRunner.run(sql,values)[0]['id'].to_i

end

def self.delete_all()
  sql = "SELECT * FROM artists"
  result = SqlRunner.run(sql)

end

def self_all()
  sql = "SELECT * FROM artists"
  artists = SqlRunner.run(sql)
return artists.map{ |individual| Artist.new(individual)}

end



end
