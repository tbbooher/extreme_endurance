# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Tim', :email => 'tim@theboohers.org', :password => 'newthings', :password_confirmation => 'newthings'
puts 'New user created: ' << user.name
