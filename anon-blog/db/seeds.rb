tags = ["Old", "Funny", "Loco"]

posts = [
  {title: 'Old Lady Voice', content: 'A pajera abiertaaaa!!', tags:[1,2] },
  {title: 'Phantom of the Opera', content: 'Coughing and Laughing', tags:[2] },
  {title: 'Hello', content: 'Just wanted to say hello', tags:[2,3] }
]

tags.each do |tag|
  Tag.create(name: tag)
end
post =Post.create valid_input
tag = Tag.create valid_input
tag2 = Tag.create valid_input
post_tag = PostTag.create post_id: post.id, tag_id: tag.id
post_tag = PostTag.create post_id: post.id, tag_id: tag2.id

# posts.each do |post|
#   Post.create!(title: post[:title], content: post[:content],
#     post[:tags].each do {|tag| tag: tag})
# end