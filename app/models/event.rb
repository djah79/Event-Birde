class Event < ApplicationRecord
	validates :start_date, presence: true
	validate :start_date_not_past
	validates :duration, presence: true
	validate :duration_with_norm
	validates :title, presence: true, length: { in: 5..140 }
	validates :description, presence: true, length: { in: 20..1000 }
	validates :price, :inclusion => { :in => 1..1000 }
	validates :location, presence: true
	has_many :attendances
	has_many :users, through: :attendances
	def start_date_not_past
		return if start_date.blank?
		if start_date < Time.now
			errors.add(:start_date, "Must be in the futur")
		end
	end
	def duration_with_norm
		return if duration.blank?
		if ((duration%5 != 0) && (duration<1))
			errors.add(:duration, "Must be positif and multiple of 5")
		end
	end
end
