collection @items, :object_root => false
node(:@id) { |item| url_for(:only_path => false) + '/' + item.id.to_s }
node(:@type) { "WasteItem" }
attributes :name
