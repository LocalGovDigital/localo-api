object @round
node(:@id) { url_for(:only_path => false) }
node(:@type) { "WasteRound" }
child :properties => :properties do
  attribute :uprn
end
