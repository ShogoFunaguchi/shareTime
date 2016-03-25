class AddTimeAllToUsers < ActiveRecord::Migration
  def change
    add_column :users, :time_all, :string
  end
end
