require_relative './config/env'

# Allow us to send PATCH and DELETE requests from form
use Rack::MethodOverride
use TodosController
run ApplicationController


