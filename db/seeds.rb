
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'

1000.times{
  randomPassword = Devise.friendly_token.first(8)

  user = UserDevise.new(
      :email =>  Faker::Internet.unique.email,
      :password =>  randomPassword,
      :password_confirmation =>  randomPassword,
      :firstname =>  Faker::Name.first_name,
      :lastname =>  Faker::Name.last_name,
      :birthday =>  Time.now,
      :gender =>  Faker::Name.first_name,
      :country => Faker::Address.country
  )

  user.save!
}


list_images = ["https://cdn.bulbagarden.net/upload/thumb/0/0d/025Pikachu.png/250px-025Pikachu.png",
               "http://archive-media-0.nyafuu.org/vp/image/1368/67/1368673826385.png",
               "http://www.freeiconspng.com/uploads/flareon-pokemon-png-1.png",
               "http://cdn2.vox-cdn.com/uploads/chorus_asset/file/671042/005Charmeleon.0.png",
               "https://orig00.deviantart.net/b41c/f/2015/287/3/8/raichu_by_swelling1-d9d2v10.png",
               "http://fc01.deviantart.net/fs70/f/2012/252/1/1/glaceon___shiny_version_by_kizarin-d5e3wht.png",
               "http://bogleech.com/pokemon/allpokes/027Sandshrew.png",
               "https://artinsights.com/wp-content/uploads/2016/08/250px-151Mew.png",
               "http://static.api6.studiobebop.net/pokemon_data/pokemon_images/Charmander.png",
               "https://vignette.wikia.nocookie.net/pokemon/images/3/3e/039Jigglypuff.png/revision/latest?cb=20140328193313",
               "https://vignette.wikia.nocookie.net/pokemon/images/9/90/300Skitty_AG_anime.png/revision/latest?cb=20150720061108",
               "https://vignette.wikia.nocookie.net/pokemon/images/b/b9/172Pichu.png/revision/latest?cb=20140329013333",
               "http://i.imgur.com/vQIkf.png",
               "https://cdn.vox-cdn.com/thumbor/zOCl_IU9RIsld_BNTBsrjUP5Ydg=/800x0/filters:no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/6810049/dragonite.png",
               "http://vignette3.wikia.nocookie.net/pokemon/images/5/56/311Plusle_AG_anime_2.png/revision/latest?cb=20150124003049",
               "http://img.time2draw.com/2015/09/Bulbasaur-Pokemon-Simple-Drawing-Tutorial-final-step-215x382.png",
               "https://cdn.bulbagarden.net/upload/thumb/7/78/150Mewtwo.png/250px-150Mewtwo.png",
               "http://cdn.bulbagarden.net/upload/8/85/385Jirachi.png",
               "https://68.media.tumblr.com/18fc35e9e9040d10069d9c33db0eb547/tumblr_onugmv025Y1vmlgf6o8_540.png",
               "https://pbs.twimg.com/media/B0_BefSIAAA4f0h.png",
               "https://cdn.bulbagarden.net/upload/thumb/9/91/255Torchic.png/250px-255Torchic.png",
               "https://vignette.wikia.nocookie.net/new-monster/images/d/d9/Oddish.png/revision/latest?cb=20150126153018",
               "https://s-media-cache-ak0.pinimg.com/originals/e7/51/8f/e7518fe6d9bc9569368a0f305967dace.png",
               "https://s-media-cache-ak0.pinimg.com/originals/ec/47/56/ec47566ba72535de038174b1aefdea1f.png"
]

1000.times {
  photo = Photo.new(
      :title => Faker::Pokemon.name,
      :image_file_name => "pokemon.png",
      :user_devises_id => rand(1..1000),
      :image => list_images[rand(0..23)]
  )

  photo.save!

}

2000.times {

  annotation = Annotation.new(
      :label => Faker::Pokemon.name,
      :upvotes => rand(1000),
      :downvotes => rand(1000),
      :user_devises_id => rand(1..1000) #
  )
  annotation.save!

  Photo.find(rand(1..1000)).annotations << annotation

}


