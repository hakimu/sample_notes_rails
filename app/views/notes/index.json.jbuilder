json.array!(@notes) do |note|
  json.extract! note, :id, :artist, :name, :year, :genre, :description, :break, :format, :album, :image
  json.url note_url(note, format: :json)
end
