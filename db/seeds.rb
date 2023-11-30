require 'faker'

8.times do
  Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph,
    poster_url: Faker::LoremFlickr.image,
    rating: Faker::Number.decimal(l_digits: 1, r_digits: 1).to_f
  )
end

3.times do
  List.create!(
    name: Faker::Movie.quote
  )
end
