### Introduction

We've seen the basics of how to interact with a PostgreSQLdatabase from our Ruby programs. Now let's make our todo list use a database instead of a text file.

### Learning Goals

* Install and use the Ruby `pg` gem.
* Interact with a PostgreSQL database from a Ruby program.
* Sanitize user input to prevent SQL injection attacks.

### Create a Database

Before continuing with this article, create a new database named `todo`, with
the following schema.

```no-highlight
CREATE TABLE tasks (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);
```

Then, insert a few tasks. You can insert new rows into your table with the following
SQL command: `INSERT INTO tasks (name) VALUES ('your todo item, here');`

### SQL-backed TODO Application

Let's return to the TODO application that was built in the "HTTP POST and
HTML Forms" article and use PostgreSQL to store the list of tasks. We've provided code for you to start with.

Start by setting up your database connection helper function in your _server.rb_ file.

Now, within the _server.rb_ file there are two places where we're either reading
tasks from or writing tasks to a file:

```ruby
get "/tasks" do
  # Reading from a file here...
  @tasks = File.readlines("tasks.txt")
  erb :index
end

post "/tasks" do
  task = params["task_name"]

  # Writing to a file here...
  File.open("tasks.txt", "a") do |file|
    file.puts(task)
  end

  redirect "/tasks"
end
```

Change the `get "/tasks"` and `post "/tasks"` routes to use your database
connection in place of the file. Whenever a user submits a task, it should be saved to your _todo_ database. Whenever the index page is loaded, the list of tasks should come from the database.

Ensure your database inputs are properly sanitized to avoid SQL injection attacks.

### Tips
* Be sure to include the **pg** gem.
* Use pry to examine the structure of the data returned from your query and process it accordingly.
