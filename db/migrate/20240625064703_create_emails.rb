class CreateEmails < ActiveRecord::Migration[7.1]
  def change
    create_table :emails do |t|
      t.integer :sender_id
      t.text :recipient_ids
      t.string :subject
      t.text :body
      t.datetime :sent_at
      t.boolean :read

      t.timestamps
    end
  end
end
