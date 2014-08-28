json.array!(@categorie_posts) do |categorie_post|
  json.extract! categorie_post, :id, :name, :description, :user_id
  json.url categorie_post_url(categorie_post, format: :json)
end
