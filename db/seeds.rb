require 'faker'

30.times do
  User.create(name: Faker::Internet.user_name,
              password: Faker::Internet.password)
end

15.times do
  Post.create(title: Faker::Company.bs,
              url: Faker::Internet.url,
              points: rand(1..100),
              user_id: rand(1..30))
end

100.times do
  Comment.create(body: Faker::Lorem.paragraph,
                 user_id: rand(1..30),
                 post_id: rand(1..15))
end