Exercise.seed do |s|
  s.id    = 1
  s.cbpm = Faker::Number.digit
  s.intensity = 'low'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end


Exercise.seed do |s|
  s.id    = 2
  s.cbpm = Faker::Number.digit
  s.intensity = 'moderate'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 3
  s.cbpm = Faker::Number.digit
  s.intensity = 'intense'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 4
  s.cbpm = Faker::Number.digit
  s.intensity = 'low'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 5
  s.cbpm = Faker::Number.digit
  s.intensity = 'intense'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 6
  s.cbpm = Faker::Number.digit
  s.intensity = 'moderate'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 7
  s.cbpm = Faker::Number.digit
  s.intensity = 'moderate'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 8
  s.cbpm = Faker::Number.digit
  s.intensity = 'intense'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 9
  s.cbpm = Faker::Number.digit
  s.intensity = 'low'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end

Exercise.seed do |s|
  s.id    = 10
  s.cbpm = Faker::Number.digit
  s.intensity = 'moderate'
  s.name  = Faker::Name.name
  s.met  = Faker::PhoneNumber.subscriber_number(2)
end