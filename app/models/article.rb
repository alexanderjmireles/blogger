class Article < ActiveRecord::Base

	has_many :comments
	has_many :taggings
	has_many :tags, through: :taggings
	has_attached_file :image
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
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

