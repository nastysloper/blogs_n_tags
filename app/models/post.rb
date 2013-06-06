class Post < ActiveRecord::Base
	has_many :taggings
	has_many :tags, :through => :taggings

	def self.create_new_post(params)
		user_post = self.create(	:title => params[:title],
									:text => params[:text]
								)
		params[:tags].split(',').each do |tag|
			user_post.tags << Tag.find_or_create_by_name(tag.strip)
		end
	end

	def self.get_recent_posts(quantity)
		Post.order("created_at DESC").limit(quantity)
	end

	def self.get_post_by_id(id)
		self.find(id)
	end

	def self.get_posts_by_tag(tag)
		self.includes(:tags).where("tags.name = ?", tag)
	end

	def self.get_posts_by_tag_id(tag_id)
		self.includes(:tags).where("tags.id = ?", tag_id)
	end

	def self.get_posts_by_content(search)
		self.where("text like ?", "%#{search}%")
	end


end
