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


post '/posts/new' do
  puts "*"*20
  p params
  @title = params.delete("title")
  @content = params.delete("content")
  p @tags = params.keys
  post = Post.create( title: @title, content: @content )
  @tags.each do |tag_id|
    PostTag.create(post_id: post.id, tag_id: tag_id)
  end
  redirect '/'

end