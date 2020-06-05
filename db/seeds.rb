todos = [
    "Wake up", 
    "Code",
    "Coding challenge",
    "Do labs",
    "Read readmes",
    'Sleep'
]

u = User.create(name: "Micah", username: "micah", password: "password")


todos.each do |t|
    Todo.create(content: t, user: u)
end