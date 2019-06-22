class TodosController < ApplicationController
  
  
  def new
    # render plain:"You found the index page for Todos"
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice] = "Post succesfully created"
      redirect_to todo_path(@todo)
    else
      render 'new'
    end
  end
  
  def show
    @todo = Todo.find(params[:id])
  end
  
  
  private
    def todo_params
      params.require(:todo).permit(:name, :description)
    
    end
  
end
