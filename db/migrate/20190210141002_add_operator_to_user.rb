class AddOperatorToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :created_by, :integer
    add_column :users, :updated_by, :integer
  end
end
