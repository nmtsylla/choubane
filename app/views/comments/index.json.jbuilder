json.array!(@comments) do |comment|
  json.extract! comment, :id, :post_id, :user_id, :message, :validated
  json.url comment_url(comment, format: :json)
end
