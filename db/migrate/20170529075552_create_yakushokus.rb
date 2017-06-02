class CreateYakushokus < ActiveRecord::Migration
  def change
    create_table :yakushokus do |t|
      t.string :yakushokuname
      t.timestamps null: false
    end
  end
end
