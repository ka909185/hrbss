class CreateSikakus < ActiveRecord::Migration
  def change
    create_table :sikakus do |t|
      t.string :shikakuname
      t.timestamps null: false
    end
  end
end
