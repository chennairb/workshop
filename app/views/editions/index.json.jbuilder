json.array!(@editions) do |edition|
  json.extract! edition, :id, :name, :date_of_event
  json.url edition_url(edition, format: :json)
end
