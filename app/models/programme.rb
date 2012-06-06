class Programme < ActiveRecord::Base
	belongs_to :course
	has_many :parts, :dependent => :delete_all

	validates_presence_of :title
end
