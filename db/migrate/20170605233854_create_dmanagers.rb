class CreateDmanagers < ActiveRecord::Migration
  def change
    create_table :dmanagers do |t|
      t.integer :emp_id
      t.integer :maneger_id

      t.timestamps null: false
    end
    add_index :dmanagers, :emp_id
    add_index :dmanagers, :maneger_id
    add_index :dmanagers, [:emp_id,:maneger_id], unique: true
  end
end
