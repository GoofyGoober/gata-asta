class AddIndiceToPannello < ActiveRecord::Migration
  def change
    add_column :operas, :archive_index, :integer
  end
end
