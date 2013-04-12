class Team < ActiveRecord::Base
  attr_accessible :supervisor_id, :name, :member_ids

  has_many :memberships, class_name: "TeamMembership", foreign_key: :team_id
  has_many :members, through: :memberships, source: :employee

  belongs_to :supervisor, class_name: "Employee"
end
