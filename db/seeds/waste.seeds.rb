
require 'yaml'
require "waste/item"

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
  puts '[db:seed] Taxonomies seeded!'
end

puts 'Seeding waste types'

types = YAML::load_file File.join ['db', 'seeds', 'waste_types.yml']
puts types
unless Waste::Type.count > 0
  puts "[db:seed] Seeding waste types"
  types['types'].each do |type|
    puts type['name']
    # taxonomy_obj = Spree::Taxonomy.find_by_name(taxonomy['name']) || FactoryGirl.create(:taxonomy, :name => taxonomy['name'])
    # taxonomy_root = taxonomy_obj.root

    # taxonomy['terms'].each do |taxon_name|
    #   FactoryGirl.create(:taxon, :name => taxon_name, :parent_id => taxonomy_root.id)
    # end
  end
else
  puts '[db:seed] Taxonomies seeded!'
end


