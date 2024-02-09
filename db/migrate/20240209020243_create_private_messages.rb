class CreatePrivateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.references :sender, null: false, index: true
      t.references :recipient, null: false, index: true

      t.timestamps
    end
  end
end
