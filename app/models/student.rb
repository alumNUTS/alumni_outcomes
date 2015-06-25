class Student < ActiveRecord::Base

	validates :email, uniqueness: true
  validates :name, presence: :true
  validates :email, presence: true
  # validates :password, presence: true
  # validates :password, confirmation: true
  validates :email, format: /@/
  has_secure_password

	belongs_to :cohort

end
