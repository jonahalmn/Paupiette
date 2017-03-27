json.extract! user, :id, :name, :nickname, :Gender, :BirthDate, :City, :Mail, :Phone, :Interest, :Description, :Password, :Type, :created_at, :updated_at
json.url user_url(user, format: :json)
