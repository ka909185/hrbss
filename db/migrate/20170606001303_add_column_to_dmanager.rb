class AddColumnToDmanager < ActiveRecord::Migration
  def change
    add_column :dmanagers, :start_date, :date, default:"2017-12-31"
  end
end
