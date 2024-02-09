class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, null: false, index: true
      t.references :gossip, null: false, index: true
      t.references :parent_comment, null: false, index: true

      t.timestamps
    end
  end
end
