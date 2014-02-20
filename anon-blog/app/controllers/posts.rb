get '/posts/new' do
  if loggedin?
    @tags = Tag.all
    erb :new_post_form
  else
    redirect '/'
  end
end

get '/posts/edit/:post' do
  @post = Post.find_by_id(params[:post])
  @tags = Tag.all
  erb :edit
end

post '/posts/edit/:post' do
  Post.find(params[:post]).destroy
  @title = params.delete("title")
  @content = params.delete("content")
  p @tags = params.keys
  post = Post.create( title: @title, content: @content )
  @tags.each do |tag_id|
    PostTag.create(post_id: post.id, tag_id: tag_id)
  end
  redirect "/posts/#{post.id}"
end

get '/posts/:post' do
  @post = Post.find_by_id(params[:post])
  @author = @post.user
  if @post
    erb :post
  else
    redirect '/'
  end
end



post '/posts/new' do
  @title = params.delete("title")
  @content = params.delete("content")
  @tags = params.keys
  post = Post.create( title: @title, content: @content, user_id: session[:id])
  @tags.each do |tag_id|
    PostTag.create(post_id: post.id, tag_id: tag_id)
  end
  redirect "/posts/#{post.id}"
end


delete '/posts/:post' do
  @post = Post.find_by_id(params[:post])
  if @post
    @post.destroy
  end
  redirect "/"
end

