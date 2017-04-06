require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, format: {with: /\w+@\w+\.\w{2,}/}
  validates :email, uniqueness: true

  has_many :students, :through => :student_teachers
  has_many :student_teachers


end
