class AddVenmoToUser < ActiveRecord::Migration
  def change
    add_column :users, :venmo, :text
  end
end
