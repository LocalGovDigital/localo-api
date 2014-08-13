object @containers
attributes :container_type
node(:@id) { |container| url_for(:only_path => false) + '/' + container.id.to_s }
