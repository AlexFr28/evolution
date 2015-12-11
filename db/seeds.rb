# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  name: "Cuillerier",
  firstname: "Alexandre",
  nickname: "Alex",
  admin: true,
  email: "alexandre.cuillerier@gmail.com",
  password: "12345678"
 )

User.create(
  name: "Bordel",
  firstname: "Daphné",
  nickname: "Dady",
  admin: true,
  email: "dady.luthien@hotmail.fr",
  password: "12345678"
 )

Tile.create([
  { name: "Money", image: "money.png", link: "items_moneys" },
  { name: "Car", image: "car.png", link: "root" },
  { name: "Cook", image: "cook.png", link: "root" },
  { name: "Children", image: "children.png", link: "root" },
  { name: "Game", image: "game.png", link: "root" },
  { name: "Event", image: "event.png", link: "root" }
  ])

ItemMoney.create([
  { name: "Bilan", image: "truc", link: "root"},
  { name: "Statistique", image: "truc", link: "root"}
  ])

symbol_plus = Operator.create()
symbol_moins = Operator.create(symbol: "-")

Account.create([
  { name: "Compte commun", operator_id: symbol_plus.id },
  { name: "En cours", operator_id: symbol_moins.id},
  { name: "Livret A (Daphné)", operator_id: symbol_plus.id },
  { name: "Livret A (Alexandre)", operator_id: symbol_plus.id },
  { name: "LEP (Daphné)", operator_id: symbol_plus.id },
  { name: "LEP (Alexandre)", operator_id: symbol_plus.id },
  { name: "Compte Daphné", operator_id: symbol_plus.id }
  ])
