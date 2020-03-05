json.extract! micropost, :id, :cate_name, :categories_id, :content, :user_id, :created_at, :updated_at
json.url micropost_url(micropost, format: :json)
