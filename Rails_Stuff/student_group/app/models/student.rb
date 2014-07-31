class Student < ActiveRecord::Base
    validates :name, presence: true
    validates :course, presence: true
    end
