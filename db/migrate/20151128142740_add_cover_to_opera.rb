class AddCoverToOpera < ActiveRecord::Migration
  def change
    add_column :details, :cover, :boolean
  end
end
