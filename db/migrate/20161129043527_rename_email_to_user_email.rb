class RenameEmailToUserEmail < ActiveRecord::Migration
  def change
      rename_column :posts, :email, :user_email
  end
end
