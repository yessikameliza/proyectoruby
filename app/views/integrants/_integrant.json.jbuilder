json.extract! integrant, :id, :username, :password, :name, :email, :created_at, :updated_at
json.url integrant_url(integrant, format: :json)
