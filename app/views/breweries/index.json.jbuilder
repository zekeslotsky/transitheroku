json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :name, :address, :city, :zip, :transit, :ga_direction, :style, :beer1, :beer2, :beer3, :generic_growlers
  json.url brewery_url(brewery, format: :json)
end
