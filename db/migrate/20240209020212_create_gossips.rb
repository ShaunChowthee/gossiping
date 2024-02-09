class CreateGossips < ActiveRecord::Migration[7.1]
  def change
    create_table :gossips do |t|
      t.text :content
      t.references :user, null: false, index: true

      t.timestamps
    end
  end
end
