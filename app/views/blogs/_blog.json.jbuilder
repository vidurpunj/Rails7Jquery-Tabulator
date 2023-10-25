json.extract! blog, :id, :body, :blog_likes_count, :blog_reposts_count, :created_at, :updated_at
json.url blog_url(blog, format: :json)
