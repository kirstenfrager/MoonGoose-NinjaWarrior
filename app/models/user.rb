class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :packages

  after_create :assign_default_role

# default role as member created when someone signs up
  def assign_default_role
    self.add_role(:member) if self.roles.blank?
  end

  def admin?
    has_role?(:admin)
  end
end
