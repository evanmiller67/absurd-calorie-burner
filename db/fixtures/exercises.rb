Exercise.seed do |s|
  s.id    = Faker::Name.name
  s.login = "jon"
  s.email = "jon@example.com"
  s.name  = Faker::Name.name
end