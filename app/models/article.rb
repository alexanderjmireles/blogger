class Article < ActiveRecord::Base

	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings

	def tag_list
		tags = []
		self.tags.each do |tag|
			tags.push tag.name
		end
		tags.join(", ")
	end


	def tag_list=(tags_string)
	end
end

