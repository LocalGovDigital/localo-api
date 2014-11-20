json.array! @services do |service|
  json.(service, :name, :frequency, :instructions, :esd_url)
end
