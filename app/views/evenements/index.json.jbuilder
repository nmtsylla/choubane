json.array!(@evenements) do |evenement|
  json.extract! evenement, :id, :titre, :date_event, :lieu, :details, :user_id
  json.url evenement_url(evenement, format: :json)
end
