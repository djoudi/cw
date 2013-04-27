class AddUserstampsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :userstamps, :string
  end
end
