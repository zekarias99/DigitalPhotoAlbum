class Album < ActiveRecord::Base
	has_many :pictures
	validates :title, :description, :date, presence: true
	validates :title, length: { maximum: 30 }, uniqueness: { case_sensitive: false }
	validates :description, length: { maximum: 200 }
	validate :date_cannot_be_in_the_future

	before_save { self.date = Date.new(date.year, date.month, 1) }
	before_destroy{ self.pictures.destroy_all }

	private 
		def date_cannot_be_in_the_future
			errors.add(:date, "can't be in the future") if
    	  	self.date > Date.today
		end

end
