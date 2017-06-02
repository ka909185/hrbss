class AddYakushokuIdToBases < ActiveRecord::Migration
  def change
    add_column :bases, :yakushoku_id, :integer
  end
end
