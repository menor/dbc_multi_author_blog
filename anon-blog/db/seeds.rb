tags = ["Old", "Funny", "Loco"]

posts = [
  {title: 'Old Lady Voice', content: 'A pajera abiertaaaa!!'},
  {title: 'Phantom of the Opera', content: 'Coughing and Laughing' },
  {title: 'Hello', content: 'Just wanted to say hello'}
]

tags.each do |tag|
  Tag.create(name: tag)
end

posts.each do |post|
  Post.create!(title: post[:title], content: post[:content])
end

# post =Post.create valid_input
# tag = Tag.create valid_input
# tag2 = Tag.create valid_input
# 9.times {PostTag.create post_id: Post.all.sample.id, tag_id: Tag.all.sample.id}
PostTag.create post_id: 1, tag_id: 1
PostTag.create post_id: 1, tag_id: 2
PostTag.create post_id: 2, tag_id: 2
PostTag.create post_id: 3, tag_id: 2
PostTag.create post_id: 3, tag_id: 3

