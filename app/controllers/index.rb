get '/' do
  @all_posts = Post.all
  erb :index
end

get '/item/:post_id' do
  @all_comments = Comment.where(post_id: params[:post_id])
  erb :comments
end

get '/user/:name' do
  @users_page = User.find_by_name(params[:name])
  erb :users
end
