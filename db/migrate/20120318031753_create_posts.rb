class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :author
      t.references :reply_to
      t.string :subject
      t.text :body

      t.timestamps
    end
    add_index :posts, :author_id
    add_index :posts, :reply_to_id
  end
end
