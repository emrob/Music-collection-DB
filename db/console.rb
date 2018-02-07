require("pry")
require_relative("../models/artist")
require_relative("../models/album")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({ 'name' => 'Eminem' })
artist1.save()
artist2 = Artist.new({ 'name' => 'Britney Spears'})
artist2.save()

album1 = Album.new({
  'title' => 'Encore',
  'artist_id' => artist1.id,
  'year' => 2004 })

album2 = Album.new({
  'title' => 'Slim Shady EP',
  'artist_id' => artist1.id,
  'year' => 1997
  })

album3 = Album.new ({
  'title' => 'Baby one more time',
  'artist_id' => artist2.id,
  'year' => 1999
  })

album1.save()
album2.save()
album3.save()

album1.update_year(1990)


binding.pry
nil
