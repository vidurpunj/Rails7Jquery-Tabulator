json.extract! post, :id, :body, :post_like, :post_reposts, :created_at, :updated_at
json.url post_url(post, format: :json)
