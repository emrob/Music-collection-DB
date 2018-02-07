require("pry")
require_relative("../models/artist")
require_relative("../models/album")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({ 'name' => 'Eminem' })
artist1.save()



binding.pry
nil
