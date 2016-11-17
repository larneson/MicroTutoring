class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.float :bounty
      t.integer :subject_id
      t.integer :user_id

      t.timestamps
    end
  end
end
