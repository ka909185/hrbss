class AddNinmeibiToBases < ActiveRecord::Migration
  def change
    add_column :bases, :ninmei_date, :date, default:"2015-12-31"
  end
end
