get '/' do
  # Look in app/views/index.erb
	 @posts = Post.get_posts_by_tag("cool")

	 @recent_posts = Post.get_recent_posts(3)
	 # @posts = Post.get_posts_by_content("frog")
  erb :index
end

post '/new_post' do
	Post.create_new_post({	:title => params[:title],
						:text => params[:text], 
						:tags => params[:tags]
					})
	# @posts = Post.all
	@posts = Post.get_posts_by_tag("cool")
	redirect to '/'
end
