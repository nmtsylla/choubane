json.array!(@audios) do |audio|
  json.extract! audio, :id, :user_id, :author, :string, :date, :image, :piste
  json.url audio_url(audio, format: :json)
end
