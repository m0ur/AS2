class Event < ActiveRecord::Base
	has_many :attendances
	belongs_to :teacher
end
