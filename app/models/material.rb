class Material < ActiveRecord::Base
	belongs_to :part
	validates_presence_of :title
	validates_presence_of :body
end
