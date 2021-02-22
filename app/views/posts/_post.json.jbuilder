json.extract! post, :id, :name, :task, :comment, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
