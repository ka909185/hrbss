class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :base
      t.references :user
      t.text :content
      t.timestamps null: false
    end
    add_foreign_key :comments, :bases, column: :base_id
    add_foreign_key :comments, :users, column: :user_id
  end
end
