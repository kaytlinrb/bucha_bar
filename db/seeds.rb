Kombucha.destroy_all

50.times do |index|
  Kombucha.create!(name: Faker::Hipster.words(2).join(" "),
                        cost: Faker::Number.between(1, 10),
                        origin: Faker::Address.city)
end

Review.all.each(&:destroy)


Kombucha.all.each do |k|
  Review.create!(author: Faker::Name.name,
                        rating: Faker::Number.between(1, 5),
                        content_body: Faker::Hipster.sentence(3),
                        kombucha_id: k.id)
end
Kombucha.all.each do |k|
  Review.create!(author: Faker::Name.name,
                        rating: Faker::Number.between(1, 5),
                        content_body: Faker::Hipster.sentence(3),
                        kombucha_id: k.id)
end
Kombucha.all.each do |k|
  Review.create!(author: Faker::Name.name,
                        rating: Faker::Number.between(1, 5),
                        content_body: Faker::Hipster.sentence(3),
                        kombucha_id: k.id)
end
Kombucha.all.each do |k|
  Review.create!(author: Faker::Name.name,
                        rating: Faker::Number.between(1, 5),
                        content_body: Faker::Hipster.sentence(3),
                        kombucha_id: k.id)
end
Kombucha.all.each do |k|
  Review.create!(author: Faker::Name.name,
                        rating: Faker::Number.between(1, 5),
                        content_body: Faker::Hipster.sentence(3),
                        kombucha_id: k.id)
end
Review.create!(author: Faker::Name.name,
                        rating: Faker::Number.between(1, 5),
                        content_body: Faker::Hipster.sentence(3),
                        kombucha_id: Kombucha.first.id)
