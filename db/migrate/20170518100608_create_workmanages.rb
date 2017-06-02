class CreateWorkmanages < ActiveRecord::Migration
  def change
    create_table :workmanages do |t|
      t.integer :emp_id
      t.integer :maneger_id

      t.timestamps null: false
    end
    add_index :workmanages, :emp_id
    add_index :workmanages, :maneger_id
    add_index :workmanages, [:emp_id,:maneger_id], unique: true
  end
end
