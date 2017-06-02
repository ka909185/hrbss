class AddKoyouIdToBases < ActiveRecord::Migration
  def change
    add_column :bases, :koyou_id, :integer
  end
end
