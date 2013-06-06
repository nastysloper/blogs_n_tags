class Tag < ActiveRecord::Base
	has_many :taggings
	has_many :posts, :through => :taggings

	def self.get_tag_by_id(id)
		self.find(id)
	end
end
