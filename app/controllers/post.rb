get "/category/choice/:category_id/:secret_key" do 
  @posted = Post.where(secret_key: params[:secret_key])
  erb :'posts/post'
end

post "/category/choice/:category_id/post/edit/:secret_key" do 
  @edit_post = Post.where(secret_key: params[:secret_key])
  erb :'posts/edit'
end

post "/posts/update/:secret_key" do
  @detail = params[:post]
  @posted = Post.find_by(secret_key: params[:secret_key])
  @posted.update(
    name: @detail[:name], 
    title: @detail[:title], 
    email: @detail[:email], 
    price: @detail[:price],
    description: @detail[:description]
    )
  redirect "/category/choice/#{@posted[:category_id]}/#{@posted[:secret_key]}"
end


