require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

@store2.employees.create(
  first_name: "Hi", 
  last_name: "World", 
  hourly_rate: 200
)

# chosen_password = Employee.find_by(first_name: "Geralt")

# puts "password", @store2
@store2.employees.each{|s| 
  puts s.password
  puts s.first_name
}