# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "\nCreating users"
10.times do 
	User.create!(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name,
		email: Faker::Internet.email,
		password: 123456,
		password_confirmation: 123456

	)
	print "|"
end

puts "\nCreating projects"
100.times do 
	p = Project.create!(
		title: Faker::App.name,
	  description: Faker::Lorem.sentence, 
	  start_date: Faker::Date.backward(25),
	  end_date: Faker::Date.forward(25),
	  goal: Faker::Number.number(5),
	  owner_id: User.all.sample.id
	)
	print "|"

	puts "\nCreating Rewards"
	4.times do 
		Reward.create!(
			project_id: p.id,
			price: Faker::Number.number(4),
  		qty: Faker::Number.number(2),
  		description: Faker::Lorem.sentence
		)
	end
	print "|"
end

puts "\nCreating Pledges"
300.times do 
	Pledge.create!(
	  amount: Faker::Number.number(4),
	  reward_id: Reward.all.sample.id,
	  backer_id: User.all.sample.id
	) 
	print "|"
end

