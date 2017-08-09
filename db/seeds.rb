# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cheerup.destroy_all
Comment.destroy_all

jay = User.create(email: 'sanjaywallah@gmail.com', password: 'password')

cheerups = Cheerup.create([
    {user: jay, title: "I believe in you", body: "I believe in you!  I also believe in ET, but this is quite beside the point…  Hang in there Kid!"},
    {user: jay, title: "Here for you", body: "I know everything sucks right now…  But the Bars are here!  I’m here!  Hang in there"},
    {user: jay, title: "Cheer Up", body: "Cheer Up.  Nothing sucks ass forever!"},
    {user: jay, title: "Chin Up", body: "Someone’s always waiting for you to fail…  Time to prove the asshole wrong!"},
    {user: jay, title: "Sunshine", body: "Sending you sunshine, rainbows, and butterflies!  Don’t throw up man; I’m just trying to cheer your sorry ass up!"},
    {user: jay, title: "To happier days", body: "Hang in there!  Sometimes the pruttiest flower grows in the biggest pile of shit!  To happier days"},
    {user: jay, title: "Time heals", body: "They say time heals all wounds.  Really?   But what about brain damage?!!  But seriously, I’m here if you need me."},
    {user: jay, title: "Hugs", body:"I’ve got two arms if you need a hug.  I’ve also got various substances far better than hugs!  But seriously, I’m always here, especially for you."},
    {user: jay, title: "Tomorrow's a new day", body:"Tomorrow’s a brand new unit of the universe stretching forth to its ultimate demise!  So don’t you worry ‘bout a thing!  But seriously, my ugly ass is here for you kid!"},
    {user: jay, title: "I'll handle it!", body:"So who do I need to nut-punch?!  Just point me in the right direction"}
  ])

comments = Comment.create([
  {body:"comment on first cheerup", cheerup: cheerups[0]},
  {body:"comment on second cheerup", cheerup: cheerups[1]},
  {body:"comment on third cheerup", cheerup: cheerups[2]}
])
