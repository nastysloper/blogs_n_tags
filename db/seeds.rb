# get users input
user_input = { 	:post_title => "My Title",
				:post_text => "My post text",
				:tags => "chill, sweet, dogs"}


# enter post into db
# user_post = Post.create( 	:title => user_input[:post_title],
# 							:text => user_input[:post_text])

# parse tags and enter into db if not there
# then get back Id's
users_tags_array = user_input[:tags].split(',').map do |tag|
	# user_post.tags << Tag.find_or_create_by_name()
	p tag.strip
end





