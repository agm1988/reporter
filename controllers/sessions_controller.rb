class SessionsController < ApplicationController
  get '/' do
    title "Welcome to Reporter"
    erb :index
  end

  get '/new_user' do
    title "Create new user account"
    erb :new_user
  end
end
