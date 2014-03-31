class Story < ActiveRecord::Base
	belongs_to :producer
	belongs_to :editor
	belongs_to :writer
	belongs_to :theme
	belongs_to :format
end
