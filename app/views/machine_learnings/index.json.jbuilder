json.array!(@machine_learnings) do |machine_learning|
  json.extract! machine_learning, :id, :name
  json.url machine_learning_url(machine_learning, format: :json)
end
