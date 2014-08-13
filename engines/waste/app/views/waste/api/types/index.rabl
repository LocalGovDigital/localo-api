collection @types, :object_root => false
node(:@id) { |type| url_for(:only_path => false) + '/' + type.id.to_s }
node(:@type) { "WasteType" }
attributes :name
