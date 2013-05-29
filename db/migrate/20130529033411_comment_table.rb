class CommentTable < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.integer :user_id
    end
  end

  def down
    drop_table :comments
  end
end
