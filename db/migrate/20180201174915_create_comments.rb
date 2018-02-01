class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :link, foreign_key: true
      t.integer :post_id #non utile
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
