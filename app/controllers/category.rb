get '/category/choice/:category_id' do
  @categories = Category.all
  @posts = Post.where(category_id: params[:category_id])
  erb :'category/choice'
end

