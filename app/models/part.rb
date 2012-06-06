class Part < ActiveRecord::Base
	belongs_to :programme
	has_many :quizzes, :dependent => :delete_all
	has_many :materials, :dependent => :delete_all

	validates_presence_of :title
end
