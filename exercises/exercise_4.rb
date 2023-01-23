require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
store1 = Store.create do |s|
  s.name = "Surrey"
  s.annual_revenue = 224000
  s.mens_apparel = false
  s.womens_apparel = true
end

store2 = Store.create do |s|
  s.name = "Whistler"
  s.annual_revenue = 1900000
  s.mens_apparel = true
  s.womens_apparel = false
end

store3 = Store.create do |s|
  s.name = "Yaletown"
  s.annual_revenue = 430000
  s.mens_apparel = true
  s.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each {|store| 
  puts "name of men's store", store.name 
  puts "annnual revenue of men's store", store.annual_revenue
}

@womens_stores = Store.where(womens_apparel: true, annual_revenue: ..1000000)
@womens_stores.each {|store| 
  puts "name of women's store", store.name 
  puts "annnual revenue of women's store", store.annual_revenue
}
