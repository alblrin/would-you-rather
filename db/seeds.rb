puts "Clearing database..."

Answer.all.each do |answer|
  answer.destroy
end

User.all.each do |user|
  user.destroy
end

Choice.all.each do |choice|
  choice.destroy
end

Category.all.each do |category|
  category.destroy
end

puts "Creating users..."

axel = User.create!(username: "axel1", password: "Axel!!")
michael = User.create!(username: "michael1", password: "Michael!!")
robin = User.create!(username: "robin1", password: "Robin!!")

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
