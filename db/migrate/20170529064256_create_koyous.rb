class CreateKoyous < ActiveRecord::Migration
  def change
    create_table :koyous do |t|
      t.string :koyoukubun
      t.timestamps null: false
    end
  end
end
