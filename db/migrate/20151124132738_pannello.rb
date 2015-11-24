class Pannello < ActiveRecord::Migration
  def change
    create_table :pannellos do |t|
      t.text :name
      t.attachment :image
    end
    
    create_table :operas do |t|
      t.text :name
      t.integer :pannello_id
      t.attachment :image
    end


  end
end
