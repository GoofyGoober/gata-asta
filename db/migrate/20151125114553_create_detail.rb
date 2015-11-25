class CreateDetail < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :opera_id
      t.attachment :image
    end
  end
end
