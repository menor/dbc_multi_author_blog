class CreatePostTag < ActiveRecord::Migration
  def change
    create_table :post_tag do |t|
      t.belongs_to :post
      t.belongs_to :tag
    end
  end
end


    # create_table :posts_tags, id: false do |t|
    #   t.column :post_id, :integer
    #   t.column :tag_id, :integer
    # end