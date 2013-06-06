get '/posts/:post_id' do
	post_id = params[:post_id]
	@post = Post.get_post_by_id(post_id)
	erb :post
end