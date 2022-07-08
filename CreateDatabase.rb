require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
    :adapter => 'sqlite3',
    :database => 'sample.db'
)

ActiveRecord::Schema.define do
    create_table :products do |table|
        table.column :code, :string
        table.column :product_type, :string
        table.column :brand, :string
        table.column :color, :string
        table.column :size, :string
        table.column :quantity, :integer
        table.column :price, :float
    end
end

class Product < ActiveRecord::Base
end

Product.create(:code => 'TLPBM12', :product_type => 'T-shirt', :brand => 'Levis', :color => 'Pitch blue', :size => 'M', :quantity => 3, :price => 23.5)
Product.create(:code => 'TLLOM13', :product_type => 'T-shirt', :brand => 'Levis', :color => 'Light orange', :size => 'M', :quantity => 1, :price => 23.5)
Product.create(:code => 'TBLOL14', :product_type => 'T-shirt', :brand => 'Boss', :color => 'Light orange', :size => 'L', :quantity => 2, :price => 40)
Product.create(:code => 'TBWS15', :product_type => 'T-shirt', :brand => 'Boss', :color => 'White', :size => 'S', :quantity => 4, :price => 40)
Product.create(:code => 'TBWM16', :product_type => 'T-shirt', :brand => 'Boss', :color => 'White', :size => 'M', :quantity => 5, :price => 40)
Product.create(:code => 'PMLB3017', :product_type => 'Pants', :brand => 'Madewell', :color =>  'Light Blue', :size => '30', :quantity => 2, :price => 95)
Product.create(:code => 'PMLB3218', :product_type => 'Pants', :brand => 'Madewell', :color =>  'Light Blue', :size => '32', :quantity => 1, :price => 95)
Product.create(:code => 'PMG3419', :product_type => 'Pants', :brand => 'Madewell', :color => 'Gray', :size => '34', :quantity => 1, :price => 95)
Product.create(:code => 'PAB3620', :product_type => 'Pants', :brand => 'Agolde', :color => 'Black', :size => '36', :quantity => 2, :price => 110)
Product.create(:code => 'PADB3821', :product_type => 'Pants', :brand => 'Agolde', :color => 'Dark Blue', :size => '38', :quantity => 2, :price => 110)