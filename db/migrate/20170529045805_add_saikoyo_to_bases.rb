class AddSaikoyoToBases < ActiveRecord::Migration
  def change
    add_column :bases, :Saikoyo, :Boolean, default:false
  end
end
