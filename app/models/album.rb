class Album < ActiveRecord::Base
	validates :title, :description, :date, presence: true
	validates :title, uniqueness: true

	def formatted_date
		return self.date.strftime('%B %Y')
	end

end
