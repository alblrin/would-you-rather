# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Clearing database..."

User.all.each do |user|
  user.destroy
end

Answer.all.each do |answer|
  answer.destroy
end

Choice.all.each do |choice|
  choice.destroy
end

Category.all.each do |category|
  category.destroy
end

puts "Creating users..."

axel = User.create!(email: "axel@gmail.com", password: "Axel!!")
michael = User.create!(email: "michael@gmail.com", password: "Michael!!")
robin = User.create!(email: "robin@gmail.com", password: "Robin!!")

puts "Creating categories..."

debutant = Category.create!({name: "Débutant"})

avance = Category.create!({name: "Avancé"})

philosophique = Category.create!({name: "Philosophique"})

puts "Creating choices..."

Choice.create!({first_choice: "Lécher la barre dans le métro", second_choice: "Mâcher un chewing-gum trouvé par terre", category: debutant})

Choice.create!({first_choice: "Porter les sous-vêtements de quelqu’un d’autre", second_choice: "Utiliser la brosse à dent de quelqu’un d’autre", category: debutant})

Choice.create!({first_choice: "Que tes parents te surprennent en train de faire l’amour", second_choice: "Surprendre tes parents faire l’amour", category: avance})

Choice.create!({first_choice: "Qu’il ne fasse jamais nuit", second_choice: "Qu’il ne fasse jamais jour", category: philosophique})

Choice.create!({first_choice: "Être ré-incarné en moustique", second_choice: "Ne pas être ré-incarné", category: philosophique})

Choice.create!({first_choice: "Pouvoir changer le passé", second_choice: "Pouvoir changer le futur", category: philosophique})

puts "Creating answers..."
Choice.all.each do |choice|
  Answer.create!({choice: choice, choice_made: [0, 1].sample, user: axel})
  Answer.create!({choice: choice, choice_made: [0, 1].sample, user: michael})
  Answer.create!({choice: choice, choice_made: [0, 1].sample, user: robin})
end

puts "Finished!"
