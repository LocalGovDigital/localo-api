collection @containers, :object_root => false
attributes :container_type, :color
node(:@id) { |container| url_for(:only_path => false) + '/' + container.id.to_s }
