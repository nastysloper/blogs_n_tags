post '/find_by_content' do
	@query = params[:content]
	@posts = Post.get_posts_by_content(params[:content])
	erb :posts_by_content
end