get '/posts/:post' do

  @post = Post.find_by_id(params[:post])
  if @post
    erb :post
  else
    redirect '/'
  end
end