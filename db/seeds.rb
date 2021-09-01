puts "Seeding..."

Bar.destroy_all
Customer.destroy_all
Order.destroy_all
Drink.destroy_all
Tab.destroy_all




c1 = Customer.create(name: "John Smith", age: 25, email: "jsmith@gmail", credit_card: 2674891674537892)
c2 = Customer.create(name: "Amy Tan", age: 34, email: "jlc@gmail", credit_card: 2674891674535109)
c3 = Customer.create(name: "Nicole Madariaga", age: 40, email: "bosscat@gmail", credit_card: 4082765430989090)
c4 = Customer.create(name: "Luna Kelly", age: 21, email: "lunakel@gmail", credit_card: 4067026460801462)

b1 = Bar.create(name: "Jenny's", latitude: 41.97078017046549, longitude: -87.65247295487663)
b2 = Bar.create(name: "Uptown Lounge", latitude: 41.96919369605612, longitude: -87.65917481851652)
b3 = Bar.create(name: "The Green Mill", latitude: 41.96922061841993, longitude: -87.65992851936497)
b4 = Bar.create(name: "Fat Cat", latitude: 41.97010405782312, longitude: -87.6599057204502)

t1 = Tab.create(customer_id: c1.id, bar_id: b2.id, is_open: true)
t2 = Tab.create(customer_id: c2.id, bar_id: b2.id, is_open: true)
t3 = Tab.create(customer_id: c3.id, bar_id: b4.id, is_open: true)
t4 = Tab.create(customer_id: c4.id, bar_id: b3.id, is_open: true)


d1 = Drink.create(bar_id: b2.id, drink_type: "Beer Domestic Draft", price: 5.00)
d2 = Drink.create(bar_id: b2.id, drink_type: "Beer Imported Draft", price: 7.00)
d3 = Drink.create(bar_id: b2.id, drink_type: "Beer Domestic Can", price: 3.50)
d4 = Drink.create(bar_id: b2.id, drink_type: "Beer Imported Can", price: 6.00)
d5 = Drink.create(bar_id: b2.id, drink_type: "Soda", price: 2.00)
d6 = Drink.create(bar_id: b2.id, drink_type: "Well Liquor", price: 5.00)
d7 = Drink.create(bar_id: b2.id, drink_type: "Wine", price: 7.00)
d8 = Drink.create(bar_id: b1.id, drink_type: "Beer Domestic Draft", price: 5.00)
d9 = Drink.create(bar_id: b1.id, drink_type: "Beer Imported Draft", price: 7.00)
d10 = Drink.create(bar_id: b1.id, drink_type: "Beer Domestic Can", price: 3.50)
d11 = Drink.create(bar_id: b1.id, drink_type: "Beer Imported Can", price: 6.00)
d12 = Drink.create(bar_id: b1.id, drink_type: "Soda", price: 2.00)
d13 = Drink.create(bar_id: b1.id, drink_type: "Well Liquor", price: 5.00)
d14 = Drink.create(bar_id: b1.id, drink_type: "Wine", price: 7.00)
d15 = Drink.create(bar_id: b3.id, drink_type: "Beer Domestic Draft", price: 5.00)
d16 = Drink.create(bar_id: b3.id, drink_type: "Beer Imported Draft", price: 7.00)
d17 = Drink.create(bar_id: b3.id, drink_type: "Beer Domestic Can", price: 3.50)
d18 = Drink.create(bar_id: b3.id, drink_type: "Beer Imported Can", price: 6.00)
d19 = Drink.create(bar_id: b3.id, drink_type: "Soda", price: 2.00)
d20 = Drink.create(bar_id: b3.id, drink_type: "Well Liquor", price: 5.00)
d21 = Drink.create(bar_id: b3.id, drink_type: "Wine", price: 7.00)
d22 = Drink.create(bar_id: b4.id, drink_type: "Beer Domestic Draft", price: 5.00)
d23 = Drink.create(bar_id: b4.id, drink_type: "Beer Imported Draft", price: 7.00)
d24 = Drink.create(bar_id: b4.id, drink_type: "Beer Domestic Can", price: 3.50)
d25 = Drink.create(bar_id: b4.id, drink_type: "Beer Imported Can", price: 6.00)
d26 = Drink.create(bar_id: b4.id, drink_type: "Soda", price: 2.00)
d27 = Drink.create(bar_id: b4.id, drink_type: "Well Liquor", price: 5.00)
d28 = Drink.create(bar_id: b4.id, drink_type: "Wine", price: 7.00)


Order.create(tab_id: t1.id, drink_id: d2.id)
Order.create(tab_id: t1.id, drink_id: d2.id)
Order.create(tab_id: t2.id, drink_id: d3.id)
Order.create(tab_id: t2.id, drink_id: d3.id)
Order.create(tab_id: t2.id, drink_id: d7.id)
Order.create(tab_id: t3.id, drink_id: d27.id)
Order.create(tab_id: t4.id, drink_id: d16.id)
Order.create(tab_id: t4.id, drink_id: d16.id)
Order.create(tab_id: t4.id, drink_id: d16.id)





puts "✅ Done seeding!"