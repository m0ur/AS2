class Student < ActiveRecord::Base
	has_many :attendances
	validates :id_number, presence: true
	validates :name, presence: true #these are essential, the others ... it depends
	validates :id_number, uniqueness: true
	
end
