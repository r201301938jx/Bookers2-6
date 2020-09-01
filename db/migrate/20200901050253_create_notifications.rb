class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :book_id
      t.integer :book_comment_id
      t.string :type
      t.boolean :checked, default: false, null: false

      t.timestamps
    end
  end
end
