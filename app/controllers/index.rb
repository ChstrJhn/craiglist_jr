get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :'front_page/index'
end

