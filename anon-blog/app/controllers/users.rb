
# User prompt to login
get '/users/login' do
  erb :'users/login'
end

# User submitting email and password (validation)
post '/users/login' do
 @user = User.find_by_email(params[:email])
 if params[:hashed_password] == @user.hashed_password
    session[:id] = @user.id
    redirect "/users/#{@user.id}"
  else
    redirect '/users/sorry'
  end
end

# User submitting info to create account
post '/users' do
  @user = User.create(params[:users])
  p params
  redirect "/users/#{@user.id}"
end

# User being prompted to sign up
get '/users/new' do

  erb :"users/new"
end

# Show individual user
get '/users/:id' do
  @user = User.find(params[:id])

  erb :"users/show"
end

# User logging out
post '/users/logout' do
  session.clear
  redirect '/'
end


