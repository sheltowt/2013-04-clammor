class CreatePostTable < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.integer :user_id
      t.string :content
    end
  end

  def down
    drop_table :posts
  end
end
