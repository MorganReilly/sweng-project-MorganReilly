# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

stock = [
        {:des => 'Bananas (Bunch 1Kg)', :qty => '20', :dep => 'FV' ,:del => '12-May-2020'},
        {:des => 'Organic Apples 500g', :qty => '40', :dep => 'FV' ,:del => '13-May-2020'},
        {:des => 'Orange Net 1Kg', :qty => '50', :dep => 'FV' ,:del => '12-May-2020'},
        {:des => 'Full Fat Milk 1L', :qty => '140', :dep => 'PC' ,:del => '12-May-2020'},
        {:des => 'Sliced Ham 100g', :qty => '37', :dep => 'PC' ,:del => '11-May-2020'},
        {:des => 'Veg Soup 500ml', :qty => '29', :dep => 'PC' ,:del => '10-May-2020'},
        {:des => 'Fruit Scone', :qty => '33', :dep => 'IB' ,:del => '12-May-2020'},
        {:des => 'Tiger Bread', :qty => '34', :dep => 'IB' ,:del => '05-May-2020'},
        {:des => 'Rustic Loaf', :qty => '15', :dep => 'IB' ,:del => '12-May-2020'},
        {:des => 'Whole Chicken 1.3Kg', :qty => '10', :dep => 'PY' ,:del => '16-May-2020'},
        {:des => 'Turkey Breast Fillets 700g', :qty => '0', :dep => 'PY' ,:del => '12-May-2020'},
        {:des => 'Breaded Mini Fillets', :qty => '0', :dep => 'PY' ,:del => '15-May-2020'},
        {:des => 'Steak Mince 700g', :qty => '10', :dep => 'MT' ,:del => '10-May-2020'},
        {:des => 'Quick Fry Steak 500g', :qty => '22', :dep => 'MT' ,:del => '11-May-2020'},
        {:des => 'Pork Loin 1Kg', :qty => '1', :dep => 'MT' ,:del => '12-May-2020'},
  	 ]

stock.each do |stock|
  Stock.create!(stock)
end