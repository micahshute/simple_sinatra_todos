class ApplicationController < Sinatra::Base

    set :views, ->{ File.join(root, "../views") }
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']

    get '/' do
        erb :home
    end

  

    self.helpers do 

        def current_user
            User.find_by(id: session[:user_id])
        end

        def logged_in?
            !!current_user
        end

        def authenticate 
            redirect '/login' if !logged_in?
        end 

        def authorize(todo)
            authenticate
            redirect '/todos' if todo.user != current_user
        end

    end

end

