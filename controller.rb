require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')
require_relative("./models/house.rb")

also_reload("./models/*")
also_reload("./views/*")

#INDEX route

get "/" do
  erb(:welcome)
end

get '/students' do
  @students = Student.all
  erb(:index)
end

get "/students/new" do
  @houses = House.all
  erb(:new)
end

post "/students" do
  @student= Student.new(params)
  @student.save
  erb(:create)
end
