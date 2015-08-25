get "/posts/add_new/" do
  @categories = Category.all
  erb :'posts/add_new'

end

post "/posts/add_new/form" do
  @details = params[:post]
  Post.create(
    name: @details[:name], 
    title: @details[:title], 
    email: @details[:email], 
    price: @details[:price],
    category_id: @details[:category_id],
    description: @details[:description],
    secret_key: ('a'..'z').to_a.shuffle[0,8].join,
   )

  redirect "/category/choice/#{@details[:category_id]}"
end