class AddFavSubjectsToUser < ActiveRecord::Migration
  def change
    add_column :users, :fav_subjects, :text
  end
end
