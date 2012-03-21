require 'sinatra/base'
require 'data_mapper'

# Dir.glob('./{helpers,controllers}/*.rb').each { |file| require file }

require "./lib/model"
require "./helpers/application_helper"
require "./controllers/application_controller"
require "./controllers/users_controller"


map('/') { run ApplicationController }
map('/user') { run UsersController }