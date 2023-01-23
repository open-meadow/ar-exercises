require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store1.update(name: 'Dollarama')
@store2 = Store.second
puts @store2.id
puts @store1.name