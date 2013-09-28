class Album < ActiveRecord::Base
	validates :title, :description, :date, presence: true
	validates :title, uniqueness: true
end
