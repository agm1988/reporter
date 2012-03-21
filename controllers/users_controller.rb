class UsersController < ApplicationController

before do
  headers "Content-Type" => "text/html; charset=utf-8"
end

  get '/' do
    title "User main"
    erb :main
  end

  get '/new' do
    title "Create new account"
    erb :new_user
  end

  post '/create' do
   @user = User.new(params[:user])
   if @user.save
     redirect  "/user"
   else
     redirect('/new')
   end
  end



  get '/ex' do
    title "User Ex"
    erb :ex
  end
end
