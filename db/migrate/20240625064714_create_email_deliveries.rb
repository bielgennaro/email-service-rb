class CreateEmailDeliveries < ActiveRecord::Migration[7.1]
  def change
    create_table :email_deliveries do |t|
      t.integer :email_id
      t.string :status
      t.datetime :sent_at

      t.timestamps
    end
  end
end
