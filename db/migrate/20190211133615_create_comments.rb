class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      
      t.integer  :created_by
      t.integer  :updated_by

      t.timestamps
    end
  end
end
