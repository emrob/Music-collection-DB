require('pg')
require_relative("./artist")
require_relative("../db/sql_runner")

class Album

attr_accessor :name, :title, :year, :artist_id
attr_reader :id

  def initialize(options)
    @name = options['name']
    @title = options['title']
    @year = options['year'].to_i
    @artist_id = options['artist_id'].to_i
    @id = options['id'].to_i if options['id']    
  end

end
