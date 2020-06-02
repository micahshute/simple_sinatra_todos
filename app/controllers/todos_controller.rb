class TodosController < ApplicationController

    get '/todos' do 
        @todos = Todo.all
        erb :'/todos/index'
    end


    get '/todos/new' do 
        erb :'/todos/new'
    end

    get '/todos/:id' do 
        @todo = Todo.find(params[:id])
        erb :'/todos/show'
    end

    post '/todos' do 
        Todo.create(content: params[:content])
        redirect '/todos'
    end

    get '/todos/:id/edit' do 
        @todo = Todo.find(params[:id])
        erb :'/todos/edit'
    end


    patch '/todos/:id' do 
        @todo = Todo.find(params[:id])
        @todo.update(content: params[:content])
        redirect '/todos'
    end

    delete '/todos/:id' do 
        t = Todo.find(params[:id])
        t.destroy
        redirect '/todos'
    end

end