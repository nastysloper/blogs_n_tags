get '/tags' do
	@tags = Tag.all
	erb :tags
end

get '/found_tag/:tag_id' do
	@tag = Tag.get_tag_by_id(params[:tag_id])
	@posts = Post.get_posts_by_tag_id(params[:tag_id])
	erb :posts_by_tag
end



