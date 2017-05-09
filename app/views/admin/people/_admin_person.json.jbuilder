json.extract! admin_person, :id, :name, :phone, :address, :identity, :cpf, :birth, :created_at, :updated_at
json.url admin_person_url(admin_person, format: :json)
