json.extract! carro, :id, :model, :brand, :driverid, :alias, :created_at, :updated_at
json.url carro_url(carro, format: :json)
