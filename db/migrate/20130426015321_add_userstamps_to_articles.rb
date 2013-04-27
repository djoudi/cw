class AddUserstampsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :userstamps, :string
  end
end
