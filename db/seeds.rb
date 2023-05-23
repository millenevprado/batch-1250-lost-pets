puts 'Starting seed...'

puts 'Cleaning db...'
Pet.destroy_all

puts 'Creating pets...'

10.times do
  Pet.create(
    name: Faker::Creature::Dog.name,
    species: Pet::SPECIES.sample,
    address: Faker::Address.full_address,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today)
  )
end

puts "#{Pet.count} pets created!"
puts 'Finished! :D'
