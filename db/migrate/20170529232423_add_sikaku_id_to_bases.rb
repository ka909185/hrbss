class AddSikakuIdToBases < ActiveRecord::Migration
  def change
    add_column :bases, :sikaku_id, :integer
  end
end
