class Attendance < ActiveRecord::Base
	belongs_to :event
	belongs_to :student
	validates :event_id, presence: true
	validates :student_id, presence: true
	validates :student_id, uniqueness: { scope: :event_id }
end
