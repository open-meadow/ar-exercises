require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store1 = Store.create do |s|
  s.name = "Burnaby"
  s.annual_revenue = 300000
  s.mens_apparel = true
  s.womens_apparel = true
end

store2 = Store.create do |s|
  s.name = "Richmond"
  s.annual_revenue = 1260000
  s.mens_apparel = false
  s.womens_apparel = true
end

store3 = Store.create do |s|
  s.name = "Gastown"
  s.annual_revenue = 190000
  s.mens_apparel = true
  s.womens_apparel = false
end

puts "count", Store.count
puts store1.name, "store1 name"