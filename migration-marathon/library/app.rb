require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require 'sinatra/flash'

enable :sessions

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development, :test do
  require 'pry'
end

# configure do
#   set :views, 'app/views'
# end

Dir[File.join(File.dirname(__FILE__), 'library', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get "/" do
  redirect to("/books")
end

get "/books" do
  @books = Book.all
end
