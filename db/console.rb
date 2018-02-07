require("pry")
require_relative("../models/artist")
require_relative("../models/album")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({ 'name' => 'Eminem' })
artist1.save()

album1 = Album.new({ 'title' => 'Encore',
  'artist_id' => artist1.id,
  'year' => 2004 })

binding.pry
nil
