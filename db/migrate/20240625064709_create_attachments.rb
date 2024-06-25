class CreateAttachments < ActiveRecord::Migration[7.1]
  def change
    create_table :attachments do |t|
      t.integer :email_id
      t.string :filename
      t.string :mime_type
      t.integer :file_size
      t.string :file_url

      t.timestamps
    end
  end
end
