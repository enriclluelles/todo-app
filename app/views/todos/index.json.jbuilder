json.array!(@todos) do |todo|
  json.extract! todo, :id, :user, :task, :done, :due
  json.url todo_url(todo, format: :json)
end
