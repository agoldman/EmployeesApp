class CreateEmployeeProfiles < ActiveRecord::Migration
  def change
    create_table :employee_profiles do |t|
      t.string :name
      t.integer :employee_id

      t.timestamps
    end
    add_index :employee_profiles, :employee_id
  end
end
