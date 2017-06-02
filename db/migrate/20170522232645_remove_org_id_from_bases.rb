class RemoveOrgIdFromBases < ActiveRecord::Migration
  def change
    remove_column :bases, :org_id, :integer
  end
end
