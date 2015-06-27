class Cohort < ActiveRecord::Base
  validates :name, presence: :true
  validates :start_date, presence: true
  validates :end_date, presence: true
	belongs_to :officer
	has_many :students
  has_many :surveys

end
