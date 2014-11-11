get '/new_account' do
	erb :new_account
end

post '/new_account' do
	user_info = params[:person]
	user = User.create!(user_info)
	session[:user_id] = user.id 
	redirect "/contacts"
end