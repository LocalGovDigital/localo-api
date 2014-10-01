object @round
node(:@id) { url_for(:only_path => false) }
node(:@type) { "WasteRound" }
child :properties => :properties do
  attribute :uprn
end
child :containers => :containers do
  attribute :container_type, :color, :size
end
node :schedule do |u|
  IceCube::Rule.from_yaml(u.schedule)
end
