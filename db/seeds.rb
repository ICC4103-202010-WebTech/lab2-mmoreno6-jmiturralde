# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

c1=Customer.create(name: "Jose Miguel",last_name: "Iturralde",email:"email1@gmail.com", phone: 9818233123, password: "pass1", address:"city1")
c2=Customer.create(name: "Martin",last_name: "Moreno",email:"email2@gmail.com", phone: 9818235465, password: "pass2", address:"city2")
c1.save!
c2.save!

e1=Event.create(name:"Event1",description:"Soccer Match", start_date:0)
e2=Event.create(name:"Event2",description:"Concert", start_date:0)
e3=Event.create(name:"Event3",description:"Party", start_date:0)

v1=Venue.create(name:"Center1", address:"addressV1",capacity:500)
v2=Venue.create(name:"Center2", address:"addressV2",capacity:400)
v3=Venue.create(name:"Center3", address:"addressV3",capacity:5000)
v1.save!
v2.save!
v3.save!

e1.venue = v1
e2.venue = v2
e3.venue = v3
e1.save!
e2.save!
e3.save!

o1=Order.create()
o2=Order.create()
o3=Order.create()
o4=Order.create()
o1.customer=c1
o2.customer=c1
o3.customer=c2
o4.customer=c2
o1.save!
o2.save!
o3.save!
o4.save!

t1=Ticket.create(price:500, description:"Regular")
t2=Ticket.create(price:1000, description:"V.I.P")
t3=Ticket.create(price:600, description:"Regular")
t4=Ticket.create(price:1200, description:"V.I.P")
t5=Ticket.create(price:700, description:"Regular")
t6=Ticket.create(price:1400, description:"V.I.P")
t7=Ticket.create(price:700, description:"Regular")
t8=Ticket.create(price:1400, description:"V.I.P")
t1.event =e1
t2.event =e1
t3.event =e2
t4.event =e2
t5.event =e3
t6.event =e3
t7.event =e1
t8.event =e3
t1.order =o1
t3.order =o1
t2.order =o2
t5.order =o2
t4.order =o3
t6.order =o3
t7.order =o4
t8.order =o4


t1.save!
t2.save!
t3.save!
t4.save!
t5.save!
t6.save!
t7.save!
t8.save!


