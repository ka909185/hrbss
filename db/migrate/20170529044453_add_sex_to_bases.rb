class AddSexToBases < ActiveRecord::Migration
  def change
    add_column :bases, :sex, :string, default: "man"
  end
end
