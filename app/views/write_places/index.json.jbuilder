json.array!(@write_places) do |write_place|
  json.extract! write_place, :id, :name, :date, :text
  json.url write_place_url(write_place, format: :json)
end
