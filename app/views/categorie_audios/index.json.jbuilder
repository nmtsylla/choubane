json.array!(@categorie_audios) do |categorie_audio|
  json.extract! categorie_audio, :id, :name, :description, :user_id
  json.url categorie_audio_url(categorie_audio, format: :json)
end
