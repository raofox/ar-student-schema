require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
    validates :email, format: {with: /\w+@\w+\.\w{2,}/}
    validates :email, uniqueness: true
    validates :age, numericality: {:greater_than => 5}
    validates :phone, length: {:minimum => 10}

    has_many :teachers, :through => :student_teachers
    has_many :student_teachers

# implement your Student model here
    def name
        self.first_name + " " + self.last_name
    end

    def age
        diff = Date.today - self.birthday
        age = (diff / 365)
        age.to_i
    end

end
