json.extract! admin_event, :id, :name, :day, :descrption, :travel_id, :created_at, :updated_at
json.url admin_event_url(admin_event, format: :json)
