json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :address, :phone, :email, :company, :notes, :twitter_handle, :birthday
  json.url contact_url(contact, format: :json)
end
