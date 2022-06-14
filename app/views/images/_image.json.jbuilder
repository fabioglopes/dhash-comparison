json.extract! image, :id, :dhash, :dfingerprint, :name, :created_at, :updated_at
json.url image_url(image, format: :json)
