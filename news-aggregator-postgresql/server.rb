require "sinatra"
require "pg"
require_relative "./app/models/article"

set :bind, '0.0.0.0'  # bind to all interfaces
set :views, File.join(File.dirname(__FILE__), "app", "views")

configure :development do
  set :db_config, { dbname: "news_aggregator_development" }
end

configure :test do
  set :db_config, { dbname: "news_aggregator_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

# Put your News Aggregator server.rb route code here

get "/articles" do
  @articles = db_connection {|conn| conn.exec("SELECT title, url, description FROM articles")}
  erb :index
end

get "/articles/new" do
  title = params["title"]
  article_url = params["url"]
  article_description = params["description"]
  erb :new
end


post "/articles/new" do
  @title = params["title"]
  @article_url = params["url"]
  @article_description = params["description"]

  db_connection do |conn|
    conn.exec_params(
    "INSERT INTO articles (title, url, description) VALUES ($1, $2, $3)",
    [params["title"], params["url"], params["description"]]
  )
  end
  erb :new
  redirect "/articles"
end
