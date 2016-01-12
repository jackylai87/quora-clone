#Create New User
post '/users' do
	user = User.create(name: params[:name], email: params[:email], password: params[:params])
	redirect "/users/#{user.id}"
end

#Display User Sign Up Form
get '/users/new' do
	erb :"user/new"
end

#Display User Profile
get '/users/:id' do
	@user = User.find(params[:id])
	erb :"user/show"
end

#Update User
patch '/users/:id' do
	user = User.update(name: params[:name], email: params[:email], password: params[:params])
	redirect "/users/#{user.id}"
end

#Delete User
delete '/users' do
	user = find(params[:id])
	user.destroy
	erb :"static/index"
end
