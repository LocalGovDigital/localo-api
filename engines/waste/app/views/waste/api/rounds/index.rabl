collection @rounds, :object_root => false
attributes :date
node(:@id) { |round| url_for(:only_path => false) + '/' + round.id.to_s }

