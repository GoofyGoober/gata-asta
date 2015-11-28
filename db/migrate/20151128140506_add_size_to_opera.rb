class AddSizeToOpera < ActiveRecord::Migration
  def change
    add_column :operas, :size, :text
  end
end
