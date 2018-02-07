require('pg')
require_relative("./artist")
require_relative("../db/runner")

class Album

attr_accessor :title, :year, :artist_id
attr_reader :id

  def initialize(options)
    @title = options['title']
    @year = options['year'].to_i
    @artist_id = options['artist_id'].to_i
    @id = options['id'].to_i if options['id']
  end

def save()
  sql = "INSERT INTO albums (title, year, artist_id ) VALUES ($1, $2, $3) RETURNING id"
  values = [@title, @year, @artist_id]
  @id = SqlRunner.run(sql, values) [0]['id'].to_i

end


def self.delete_all()
  sql = "DELETE FROM albums"
  result = SqlRunner.run(sql)

end



end
