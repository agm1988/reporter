class ApplicationController < Sinatra::Base
  helpers ApplicationHelper

  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)

  # don't enable logging when running tests
  configure :production, :development do
    enable :logging
  end

  # will be used to display 404 error pages

  get ('/') do
    erb "Welcome to Reporter!!!!!!!!!"
  end

  not_found do
    title 'Not Found!'
    erb :not_found
  end
end