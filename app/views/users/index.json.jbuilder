json.array! @users do |user|
  json.first_name user.first_name
  json.last_name user.last_name
  json.age_name user.age
  json.created_at user.created_at
  json.updated_at user.updated_at
end
