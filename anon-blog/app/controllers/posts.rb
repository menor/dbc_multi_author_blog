get '/posts/new' do
  @tags= Tag.all
  erb :new_post_form
end


get '/posts/:post' do

  @post = Post.find_by_id(params[:post])
  if @post
    erb :post
  else
    redirect '/'
  end
end