# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Delete data from database...'

Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

tequila = Ingredient.create!(name: 'tequila')
cointreau = Ingredient.create(name: 'Cointreau')
limejuice = Ingredient.create(name: 'lime juice')
salt = Ingredient.create(name: 'sea salt')
lime = Ingredient.create(name: 'lime wedge')
grapefruitjuice = Ingredient.create(name: 'grapefruit juice')
maplesyrup = Ingredient.create(name: 'maple syrup')
sodawater = Ingredient.create(name: 'soda water')
grapefruitwedge = Ingredient.create(name: 'grapefruit wedge')
lemonjuice = Ingredient.create(name: 'lemon juice')
agavenectar = Ingredient.create(name: 'agave nectar')
angosturabitters = Ingredient.create(name: 'Angostura bitters')
eggwhite = Ingredient.create(name: 'egg white')
cocktailcherry = Ingredient.create(name: 'cocktail cherry')
whiskey = Ingredient.create(name: 'Bourbon whiskey')
orangepeel = Ingredient.create(name: 'Orange peel')

puts 'Ingredients created'

margarita = Cocktail.create!(
  name: 'CLASSIC MARGARITA',
  description: 'How to make a classic margarita with 3 simple ingredients.',
  instruction: 'Take a lime wedge and run the lime around the rim of a glass. Dip the edge of the rim into a plate of salt. Place all ingredients in a cocktail shaker with 4 ice cubes and shake until cold.',
  prep_time: 10,
  alcohol: true
)

paloma = Cocktail.create!(
  name: 'Paloma',
  description: 'The favourite cocktail from Mexico.',
  instruction: 'Take a grapefruit wedge and run it around the rim of a glass. Dip the edge of the rim into a plate of salt. Add the tequila, grapefruit juice, lime juice and syrup into a glas and stir it. Fill the glas with ice. Add some soda water.',
  prep_time: 5,
  alcohol: true
)

tequilasour = Cocktail.create!(
  name: 'Tequila Sour',
  description: "One of the classic cocktails you can't get enough of.",
  instruction: 'Add the tequila, lemon juice, lime juice, syrup, bitters, and egg white to a cocktail shaker. Shake for 15 seconds. Add the ice and shake again for 30 seconds. Pour everything into a glass and top it with a cocktail cherry and a lime wedge.',
  prep_time: 5,
  alcohol: true
)

whiskeysour = Cocktail.create!(
  name: 'Whiskey Sour',
  description: "A super simple cocktail which is one of the classic cocktails out there.",
  instruction: 'Add the whiskey, lemon juice, syrup and ice to a cocktail shaker. Shake until its very cold. Pour everything into a glass and top it with an orange peel and a cocktail cherry.',
  prep_time: 5,
  alcohol: true
)

puts 'Cocktails created'

Dose.create!(
  description: '1 1/2 ounces',
  cocktail: margarita,
  ingredient: tequila
)

Dose.create!(
  description: '1 ounce',
  cocktail: margarita,
  ingredient: cointreau
)

Dose.create!(
  description: '3/4 ounce',
  cocktail: margarita,
  ingredient: limejuice
)

Dose.create!(
  description: 'A bit',
  cocktail: margarita,
  ingredient: salt
)

Dose.create!(
  description: '1',
  cocktail: margarita,
  ingredient: lime
)

Dose.create!(
  description: '2 ounces',
  cocktail: paloma,
  ingredient: tequila
)

Dose.create!(
  description: '2 ounces',
  cocktail: paloma,
  ingredient: grapefruitjuice
)

Dose.create!(
  description: '1/2 ounce',
  cocktail: paloma,
  ingredient: limejuice
)

Dose.create!(
  description: '1/2 ounce',
  cocktail: paloma,
  ingredient: maplesyrup
)

Dose.create!(
  description: '1 ounce',
  cocktail: paloma,
  ingredient: sodawater
)

Dose.create!(
  description: '1',
  cocktail: paloma,
  ingredient: grapefruitwedge
)

Dose.create!(
  description: 'A bit',
  cocktail: paloma,
  ingredient: salt
)

Dose.create!(
  description: '2 ounces',
  cocktail: tequilasour,
  ingredient: tequila
)

Dose.create!(
  description: '1 ounce',
  cocktail: tequilasour,
  ingredient: lemonjuice
)

Dose.create!(
  description: '1/2 ounce',
  cocktail: tequilasour,
  ingredient: limejuice
)

Dose.create!(
  description: '2 teaspoons',
  cocktail: tequilasour,
  ingredient: agavenectar
)

Dose.create!(
  description: '2 dashes',
  cocktail: tequilasour,
  ingredient: angosturabitters
)

Dose.create!(
  description: '2 dashes',
  cocktail: tequilasour,
  ingredient: eggwhite
)

Dose.create!(
  description: '1',
  cocktail: tequilasour,
  ingredient: cocktailcherry
)

Dose.create!(
  description: '1',
  cocktail: tequilasour,
  ingredient: lime
)

Dose.create!(
  description: '2 ounces',
  cocktail: whiskeysour,
  ingredient: whiskey
)

Dose.create!(
  description: '1 ounce',
  cocktail: whiskeysour,
  ingredient: lemonjuice
)

Dose.create!(
  description: '3/4 ounce',
  cocktail: whiskeysour,
  ingredient: maplesyrup
)

Dose.create!(
  description: 'A bit of',
  cocktail: whiskeysour,
  ingredient: orangepeel
)

Dose.create!(
  description: '1',
  cocktail: whiskeysour,
  ingredient: cocktailcherry
)

puts 'Doses created'
puts "You now have #{Ingredient.count} ingredients and #{Cocktail.count} cocktails and #{Dose.count} doses."
