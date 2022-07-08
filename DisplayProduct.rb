require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'sample.db'
)

class Product < ActiveRecord::Base
end

# Display the number of T-shirts with brand of “Levis” and with size of “M”
tshirts = Product.where(product_type: 'T-shirt', brand: 'Levis', size: 'M')
puts "There are #{tshirts.sum(:quantity)} T-shirts available with Levi brand in medium size"

# Display the price of “Dark blue” “Agolde” with the size of “38”
product = Product.where(color: 'Dark Blue', brand: 'Agolde', size: '38').take
product_price_integer = product.price.to_i
puts "The price of #{product.color}, #{product.brand} pants with size #{product.size} is #{product_price_integer}."

# Display a list of SKUs for the “T-shirts” with two or less items available in the stock
products = Product.where(product_type: 'T-shirt', quantity: [1,2])
puts "SKUs for T-shirts with two or less items available"
for product in products
    puts product.code
end