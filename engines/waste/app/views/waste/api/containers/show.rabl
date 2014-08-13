object @container
node(:@id) { url_for(:only_path => false) }
node(:@type) { "WasteContainer" }
attributes :container_type, :color
