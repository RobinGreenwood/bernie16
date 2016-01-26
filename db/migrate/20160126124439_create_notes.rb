class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :sender_email
      t.string :receiver_email
      t.text :text

      t.timestamps
    end
  end
end
