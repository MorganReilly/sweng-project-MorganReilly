# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

produce = [{:product_name => 'Bananas', :quantity => '40', :next_delivery => '12-May-2020'},
    	{:product_name => 'Grapes', :quantity => '30', :next_delivery => '11-May-2020'},
    	{:product_name => 'Potatoes', :quantity => '100', :next_delivery => '13-May-2020'},
      	{:product_name => 'Celeriac', :quantity => '0', :next_delivery => '20-May-2020'},
  	 ]

produce.each do |produce|
#   Produce.create!(produce)
end