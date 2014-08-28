json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :title, :content, :published, :nbr_views
  json.url post_url(post, format: :json)
end
