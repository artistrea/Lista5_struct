class Student < ApplicationRecord
  belongs_to :teacher

  validates :name, :student_register, :email, :birthdate , presence: true
  validates :student_register, :email, uniqueness: true
  validates_length_of :student_register , is: 9
  validates_date :birthdate, before: lambda { Date.current }

  has_one_attached :profile_pic
end
