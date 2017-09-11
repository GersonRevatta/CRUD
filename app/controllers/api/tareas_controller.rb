#class ApiController < ApplicationController 
class Api::TareasController < ApplicationController
#  before_action :set_user, only: [:apiRuby]

  def index
    posts =  Tarea.all 
    render json: posts
  end

  def show
    @tarea = (params[:id])
    posts =  Tarea.find_by(id: @tarea)
    render json: posts
  end

  def destroy
    @tarea = Tarea.find(params[:id])
    if @tarea.destroy()
      head :no_content, status: :ok
    else
      render json: @tarea.errors, status:  :unprocessable_entity
    end
  end
   def create
     @tarea = Tarea.create(tareas_params)
     render json: @tarea
   end

  def update
      @tarea = Tarea.find(params[:id])
      @tarea.update_attributes(idea_params)
      render json: @tarea
  end 
  private
    def tareas_params
      params.require(:post).permit(:activo, :descripcion, :prioridad, :titulo)
    end
end