class AddPriceToOpera < ActiveRecord::Migration
  def change
    add_column :operas, :price, :text
  end
end
