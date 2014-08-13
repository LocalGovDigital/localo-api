collection @containers, :object_root => false
node(:@id) { |container| url_for(:only_path => false) + '/' + container.id.to_s }
node(:@type) { "WasteContainer" }
attributes :container_type, :color
