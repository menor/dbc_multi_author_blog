# require 'spec_helper'

# describe "PostController" do
#   before do
#     post = Post.create(title: 'Old Lady Voice', content: 'A pajera abiertaaaa!!')
#     tag = Tag.create(name: 'Funky')
#     post_tag = PostTag.create(post_id: post.id, tag_id: tag.id)
#   end

#   describe "Post" do
#     it "should get a response on GET '/'" do
#       get "/"
#       expect(last_response).to be_ok
#     end

#     it 'should list posts' do
#       get "/"
#       expect(last_response.body).to include("Old Lady Voice")
#     end

#     it "should enter in a new post to the databse POST '/posts/new' " do
#       params = {title: "la la la #{Time.now}", content: "yo #{Time.now}"}
#       expect{
#         post( '/posts/new', params )
#         }.to change(Post, :count).by(1)
#     end

#     # it "should display the appropriate posts when selected by tag GET " do
#     #   # get "/tags/Funky"
#     #   # p last_response.body
#     #   #.to include("A pajera")
#     # end
#     # it "should edit a current post POST '/posts/edit/:post'" do
#     #   post "/posts/edit/:post"
#     #   expect{ Post}

#   end
#   # describe 'create a new post' do

#   #   it 'should add a new post' do
#   #     expect{ post('/posts/new', {title: "changed", content: "as", 1 => "____tag_id____"})
#   #     }.to change(Post, :count).by(1)
#   #     p Posts.all
#   #     # last_response.should be_ok
#   #     # last_response.body.should
#   #   end
#   # end

#   # describe 'should add '
# end