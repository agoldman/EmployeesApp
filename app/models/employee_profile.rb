class EmployeeProfile < ActiveRecord::Base

  attr_accessible :employee_id, :name, :age, :favorite_food, :favorite_day,
  :birth_date, :salary, :avatar

  has_attached_file :avatar,
  :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images/:style/missing.png"

  belongs_to :employee

  validates_presence_of :name, :employee, :age, :favorite_food, :favorite_day, :birth_date, :salary

end
