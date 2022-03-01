# This will delete any existing rows from the Movie and Actor tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting movie/actor data..."
Movie.destroy_all
Actor.destroy_all

puts "Creating movies..."
mean_girls = Movie.create(title: "Mean Girls", box_office_earnings: 129_000_000)
spice_world = Movie.create(title: "Spice World", box_office_earnings: 151_000_000)

puts "Creating actors..."
lindsay_lohan = Actor.create(name: "Lindsay Lohan")
tina_fey = Actor.create(name: "Tina Fey")
baby_spice = Actor.create(name: "Emma Bunton")
ginger_spice = Actor.create(name: "Geri Halliwell")
scary_spice = Actor.create(name: "Melanie Brown")
sporty_spice = Actor.create(name: "Melanie Chisholm")
posh_spice = Actor.create(name: "Victoria Addams")

puts "Creating roles..."
# ***********************************************************
# * TODO: create roles! Remember, a role belongs to a movie *
# * and a role belongs to an actor.                         *
# ***********************************************************
# Create Roles Here
role1 = Role.create(salary: '5', character_name: 'A', movie_id: 1, actor_id: 1)
role2 = Role.create(salary: '10', character_name: 'B', movie_id: 1, actor_id: 2)
role3 = Role.create(salary: '5', character_name: 'C', movie_id: 1, actor_id: 3)
role4 = Role.create(salary: '2', character_name: 'D', movie_id: 2, actor_id: 1)
role5 = Role.create(salary: '3', character_name: 'E', movie_id: 2, actor_id: 3)
role6 = Role.create(salary: '2', character_name: 'F', movie_id: 2, actor_id: 5)

puts "Seeding done!"