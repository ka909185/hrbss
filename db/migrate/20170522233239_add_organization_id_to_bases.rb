class AddOrganizationIdToBases < ActiveRecord::Migration
  def change
    add_column :bases, :organization_id, :integer
  end
end
