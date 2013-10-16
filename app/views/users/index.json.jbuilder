json.array!(@users) do |user|
  json.extract! user, :FirstName, :LastName, :Email, :Password, :BusinessCategory
  json.url user_url(user, format: :json)
end