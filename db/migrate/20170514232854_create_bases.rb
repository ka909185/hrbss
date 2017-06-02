class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
      t.string :employeecode
      t.text :name
      t.date :birthday
      t.timestamps null: false
    end
  end
end
