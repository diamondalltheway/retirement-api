require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'real_estate_transactions.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
    l = Location.new
    l.city = row['city']
    l.country = row['country']
    l.rank = row['rank']
    l.col_index = row['cost of living index']
    l.rent_index = row['rent index']
    l.col_plus_rent_index = row['cost of living plus rent index']
    l.groceries_index = row['groceries index']
    l.restaurant_price_index = row['restaurant price index']
    l.lpp_index = row['local purchasing power index']

    puts l
