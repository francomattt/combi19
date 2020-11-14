json.extract! state, :id, :name, :deleted_at, :created_at, :updated_at
json.url state_url(state, format: :json)
