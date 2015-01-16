json.array!(@participants) do |participant|
  json.extract! participant, :id, :name, :email, :attended_meetups, :living_in_chennai,
                :student_or_employed, :have_ruby_configured_laptop, :remarks
  json.url participant_url(participant, format: :json)
end
