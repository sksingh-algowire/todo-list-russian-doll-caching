json.array!(@todos) do |todo|
  json.extract! todo, :id, :description
  json.url todo_url(todo, format: :json)
end
