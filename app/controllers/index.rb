# GIT test.

get '/session-viewer' do
  session.inspect
end

get '/'  do
  redirect "/contacts" #Sends user to /contacts path right away.
end

get "/contacts" do
  redirect '/login' unless session[:user_id]
  @contacts = Contact.all
     #Makes objects out of all the rows of the contacts table.
  erb(:contacts) #Paranthesis optional.  Connects to the views contacts folder.  Passes the @contacts variable.
end

get "/contacts/new" do
  erb :new
end

get "/contacts/super_list" do
  erb :super_list
end


get "/contacts/:id" do |id|
  @contact = Contact.find(id)
  @comments = Comment.where contact_id: id

  erb :show
end

post "/contacts/:id" do |id|
  p params

  comment = Comment.create!(photo: params[:comment][:photo], user_id: current_user.id, contact_id: id, description: params[:comment][:description])
  @contact = Contact.find(comment.contact_id)
  # Reply.create(params[:reply]) 
  # Reply.create(user_id: current_user.id, reaction: params[:reply][:reaction]) #Maybe you need to put in the current user here.
#Maybe you need to put in the current user here.
  erb :'_comment', locals: {comment: comment}
end

post "/contacts/:id/comments/:comment_id" do |id, comment_id|
  reply = {comment_id: comment_id, user_name: current_user.name, reaction: params[:reply][:reaction]}
  comment = Comment.find(comment_id)
  comment.replies << Reply.create(user_id: current_user.id, reaction: params[:reply][:reaction])
  if request.xhr?
    puts params
    return reply.to_json
  else
    redirect "/contacts/#{id}"
  end
end



post "/contacts" do
  contact_info = params[:person]
  contact = Contact.create!(contact_info)
  if request.xhr?
    puts params
    return contact.to_json
  else
    redirect "/contacts"
  end
end

get "/contacts/:id/edit" do |id|
  @contact = Contact.find(id)
  erb :edit
end


patch "/contacts/:id" do |id|
  contact = Contact.find(id)
  updated_info = params[:person]
  contact.update_attributes(updated_info)
  redirect "/contacts/#{contact.id}"
end

delete "/contacts/:id" do |id|
  Contact.find(id).destroy
  redirect "/contacts"
end



