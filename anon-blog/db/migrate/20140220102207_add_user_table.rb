class AddUserTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :hashed_password
      t.timestamps
    end

    add_column :posts, :user_id, :integer

  end
end
