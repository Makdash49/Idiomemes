get '/login' do
	erb :login
end


# The code provided by Michael Busch was buggy!

# post '/login' do
# 	user = User.find_by(name: params[:name])
# 	if user.authenticate(params[:password])
# 		session[:user_id] = user.id 
# 		redirect '/contacts'
# 	else
# 		erb :login
# 	end
# end

post '/login' do
	user = User.find_by(name: params[:name])
	if user == nil
		erb :login
	elsif user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect '/contacts'
	else
		erb :login
	end
end



get '/logout' do
	session.delete(:user_id)
	redirect '/login'
end