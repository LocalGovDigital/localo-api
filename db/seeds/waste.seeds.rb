
require 'yaml'
require "waste/item"
require "waste/type"

puts '[db:seed] dumping db data...'

Waste::Type.destroy_all
Waste::Item.destroy_all

puts '[db:seed] ...dumped'

puts 'Seeding waste items'
items = YAML::load_file File.join ['db', 'seeds', 'waste_items.yml']
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
unless Waste::Type.count > 0
  puts "[db:seed] Seeding waste types"
  types['types'].each do |type|
    puts type['name']
    FactoryGirl.create(:type, :name => type['name'])
  end
else
  puts '[db:seed] Types seeded!'
end

puts 'Seeding waste containers'
containers = YAML::load_file File.join ['db', 'seeds', 'waste_containers.yml']
unless Waste::Container.count > 0
  puts "[db:seed] Seeding waste containers"
  containers.each do |container|
    puts container['name']
    FactoryGirl.create(:container, :container_type => container['type'], :size => container['size'], :color => container['color']) #, :waste_type => container['waste_type'])
  end
else
  puts '[db:seed] Containers seeded!'
end

puts 'Seeding properties'
properties = YAML::load_file File.join ['db', 'seeds', 'properties.yml']
unless Waste::Property.count > 0
  puts "[db:seed] Seeding properties"
  properties.each do |property|
    FactoryGirl.create(:property, :uprn => property)
  end
else
  puts '[db:seed] Properties seeded!'
end
