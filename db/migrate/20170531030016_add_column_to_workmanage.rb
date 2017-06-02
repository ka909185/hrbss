class AddColumnToWorkmanage < ActiveRecord::Migration
  def change
    add_column :workmanages, :start_date, :date, default:"2017-12-31"
    add_column :workmanages, :stop_date, :date, default:"2382-12-31"
  end
end
