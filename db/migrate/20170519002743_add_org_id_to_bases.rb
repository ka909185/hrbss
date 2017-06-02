class AddOrgIdToBases < ActiveRecord::Migration
  def change
    add_column :bases, :org_id, :integer
  end
end
