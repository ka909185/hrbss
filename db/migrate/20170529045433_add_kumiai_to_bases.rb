class AddKumiaiToBases < ActiveRecord::Migration
  def change
    add_column :bases, :kumiai, :string, default: "hikumi"
  end
end
