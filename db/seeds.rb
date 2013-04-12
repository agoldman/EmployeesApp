ActiveRecord::Base.transaction do
  april = Employee.create!
  blixa = Employee.create!(supervisor_id: 1)
  laura = Employee.create!(supervisor_id: 1)
  donna = Employee.create!(supervisor_id: 3)

  rr = Team.create!(name: "RR", supervisor_id: 3)
  tm = TeamMembership.create!(employee_id: 1, team_id: 1)
  tm = TeamMembership.create!(employee_id: 3, team_id: 1)

  ap = EmployeeProfile.create!(employee_id: 1, name: "april", age: 29,
  favorite_food: "peanut butter cups", favorite_day: "Saturday",
  birth_date: DateTime.new(1984, 4, 7), salary: 10000)

  april.employee_profile = ap
  april.save!

  bp = EmployeeProfile.create!(employee_id: 2, name: "blixa", age: 8,
  favorite_food: "chicken", favorite_day: "Saturday",
  birth_date: DateTime.new(2005, 6, 17), salary: 30000)

  blixa.employee_profile = bp
  blixa.save!

  lp = EmployeeProfile.create!(employee_id: 3, name: "laura", age: 17,
  favorite_food: "pie", favorite_day: "Friday",
  birth_date: DateTime.new(1975, 1, 1), salary: 40000)

  laura.employee_profile = lp
  laura.save!

  dp = EmployeeProfile.create!(employee_id: 3, name: "donna", age: 17,
  favorite_food: "soda", favorite_day: "Monday",
  birth_date: DateTime.new(1975, 5, 14), salary: 60000)

  donna.employee_profile = dp
  donna.save!

end