class TodosController < ApplicationController

    get '/todos' do 
        authenticate
        @todos = current_user.todos
        erb :'/todos/index'
    end


    get '/todos/new' do 
        authenticate
        erb :'/todos/new'
    end

    get '/todos/:id' do 
        @todo = Todo.find(params[:id])
        authorize(@todo)
        erb :'/todos/show'
    end

    post '/todos' do 
        authenticate
        Todo.create(content: params[:content], user: current_user)
        redirect '/todos'
    end

    get '/todos/:id/edit' do 
        @todo = Todo.find(params[:id])
        authorize(@todo)
        erb :'/todos/edit'
    end


    patch '/todos/:id' do 
        @todo = Todo.find(params[:id])
        authorize(@todo)
        @todo.update(content: params[:content])
        redirect '/todos'
    end

    delete '/todos/:id' do 
        t = Todo.find(params[:id])
        authorize(t)
        t.destroy
        redirect '/todos'
    end

end