
require 'yaml'
require "waste/item"
require "waste/type"

puts 'Seeding waste items'

items = YAML::load_file File.join ['db', 'seeds', 'waste_items.yml']
puts items
unless Waste::Item.count > 0
  puts "[db:seed] Seeding waste items"
  items.each do |item|
    puts item
    FactoryGirl.create(:item, :name => item)
  end
else
  puts '[db:seed] Items seeded!'
end

puts 'Seeding waste types'

types = YAML::load_file File.join ['db', 'seeds', 'waste_types.yml']
puts types
unless Waste::Type.count > 0
  puts "[db:seed] Seeding waste types"
  types['types'].each do |type|
    puts type['name']
    FactoryGirl.create(:type, :name => type['name'])
  end
else
  puts '[db:seed] Types seeded!'
end


