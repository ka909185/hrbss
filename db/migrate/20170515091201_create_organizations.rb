class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :orgcode
      t.text :orgname
      t.timestamps null: false
    end
  end
end
