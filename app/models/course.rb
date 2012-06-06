class Course < ActiveRecord::Base
	has_many :programmes, :dependent => :delete_all

	validates_presence_of :title
end
