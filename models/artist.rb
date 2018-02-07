require('pg')
require_relative("./album")
require_relative("../db/sql_runner")

class Artist

  attr_accessor :name, :genre
  attr_reader :id

def initialize(options)
  @name = options['name']
  @genre = options['genre']
  @id = options['id'].to_i

end



end
