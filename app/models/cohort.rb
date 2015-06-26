class Cohort < ActiveRecord::Base
  validates :name, presence: :true
	belongs_to :officer
	has_many :students
  has_many :surveys

end
