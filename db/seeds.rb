todos = [
    "Wake up", 
    "Code",
    "Coding challenge",
    "Do labs",
    "Read readmes",
    'Sleep'
]

todos.each do |t|
    Todo.create(content: t)
end