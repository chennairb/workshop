json.array!(@coaches) do |coach|
  json.extract! coach, :id, :name, :email, :twitter_handle, :attended_meetups, :living_in_chennai
  json.url coach_url(coach, format: :json)
end
