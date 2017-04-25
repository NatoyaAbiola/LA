require "sinatra"

set :bind, '0.0.0.0'  # bind to all interfaces
set :public_folder, File.join(File.dirname(__FILE__), "public")

get "/tasks" do
  @tasks = ["pay bills", "buy milk", "learn Ruby"]
  erb :index
end

get "/tasks/:task_name" do
  @task_name = params[:task_name]
  erb :show
end
#
# get "/hello" do
#   "<p>Hello, world! The current time is #{Time.now}.</p>"
# end


# get "/tasks" do
#   # The three quotes below is simply to treat everything below as a string
#   '''
#   <!DOCTYPE html>
#   <html>
#     <head>
#       <title>Basic HTML Page</title>
#       <link rel="stylesheet" href="home.css">
#     </head>
#
#     <body>
#       <h1>TODO list</h1>
#
#       <ul>
#           <li>pay bills</li>
#           <li>buy milk</li>
#           <li>learn Ruby</li>
#           <li>try and take over the world</li>
#       </ul>
#     </body>
#   </html>
#   '''
# end

# get "/tasks" do
#   @tasks = ["pay bills", "buy milk", "learn Ruby"]
#   erb :index

#   html = '''
#   <!DOCTYPE html>
#   <html>
#     <head>
#       <title>Basic HTML Page</title>
#       <link rel="stylesheet" href="home.css">
#     </head>
#
#     <body>
#       <h1>TODO list</h1>
#       <ul>
#   '''
#
#   tasks.each do |task|
#     html += "<li>#{task}</li>"
#   end
#
#   html += '''
#       </ul>
#     </body>
#   </html>
#   '''
#     end
# end
