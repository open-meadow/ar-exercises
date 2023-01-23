require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
store_name = gets.chomp
store = Store.create(name: store_name, annual_revenue: 37283)
# store1 = Store.create do |s|
#   s.name = store_name
#   s.annual_revenue = 300000
#   s.mens_apparel = true
#   s.womens_apparel = true
# end

puts store.errors.full_messages, "error"
puts Store.all