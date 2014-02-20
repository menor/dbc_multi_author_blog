# require 'spec_helper'


# describe "IndexController" do
#   before do
#     post = Post.create(title: 'Old Lady Voice', content: 'A pajera abiertaaaa!!')
#     tag = Tag.create(name: 'Funky')
#     post_tag = PostTag.create(post_id: post.id, tag_id: tag.id)
#   end

#   describe 'get all posts' do
#     it 'should see all posts' do
#       get "/"
#       expect(last_response).to be_ok
#     end

#     it 'should list posts' do
#       get "/"
#       expect(last_response.body).to include("Old Lady Voice")
#     end
#   end
# end
