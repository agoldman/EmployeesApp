class AddFeaturesToEmployeeProfile < ActiveRecord::Migration
  def change
    add_column :employee_profiles, :height, :integer
    add_column :employee_profiles, :age, :integer
    add_column :employee_profiles, :favorite_food, :string
    add_column :employee_profiles, :favorite_day, :string
    add_column :employee_profiles, :birth_date, :date
    add_column :employee_profiles, :salary, :integer
    add_attachment :employee_profiles, :avatar
  end
end
