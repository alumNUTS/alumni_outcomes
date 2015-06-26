class Student < ActiveRecord::Base

	validates :email, uniqueness: true
  validates :name, presence: :true
  validates :email, presence: true
  validates :password, presence: true,
    if: Proc.new { |a| a.password_digest.nil? }
  validates :password, confirmation: true,
    if: Proc.new { |a| a.password_digest.nil? }
  validates :email, format: /@/
  has_secure_password

	belongs_to :cohort

  def self.search(query)
    where("name like ?", "%#{query}%") 
  end

end
