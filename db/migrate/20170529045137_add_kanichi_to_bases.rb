class AddKanichiToBases < ActiveRecord::Migration
  def change
    add_column :bases, :kanichi, :string, default:"kan"
  end
end
