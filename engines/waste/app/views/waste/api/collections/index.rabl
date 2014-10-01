collection @collections, :object_root => false
attributes :date
node(:@id) { |collection| url_for(:only_path => false) + '/' + collection.id.to_s }

