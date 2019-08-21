class Attendance < ApplicationRecord
	after_create :event_send
	belongs_to :user
  	belongs_to :event
  	def event_send
    	AttendanceMailer.event_email(self).deliver_now
  	end
end
