class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.string :email
      t.string :token
      t.timestamp :expired_date
      t.boolean :operator_confirmed
      t.boolean :vaild
      t.string :customer_type
      t.timestamp :email_send_at
      t.integer :create_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
