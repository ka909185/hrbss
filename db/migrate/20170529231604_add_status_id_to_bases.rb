class AddStatusIdToBases < ActiveRecord::Migration
  def change
    add_column :bases, :status_id, :integer
  end
end
