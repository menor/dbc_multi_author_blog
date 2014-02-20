get '/' do
  # Look in app/views/in@dex.erb
  @user = User.find(session[:id]) if loggedin?
  @posts = Post.all
  @tags = Tag.all
  erb :index
end

# get '/tags/:tag' do
#   # Look in app/views/in@dex.erb
#   tag_id= params[:tag]
#   @tag = Tag.find_by_id(tag_id)
#   post_tags = PostTag.where( tag_id: tag_id )
#   @posts = []
#   post_tags.each do |join|
#     @posts << Post.find_by_id(join.post_id)
#   end
#   # @posts = Post.find_all_by_tag_id(params[:tag])
#   # @posts = @tag.posts
#   erb :tag_index
# end
