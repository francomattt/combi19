json.extract! comment, :id, :name, :score, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)
