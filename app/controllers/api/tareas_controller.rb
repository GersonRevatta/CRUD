#class ApiController < ApplicationController 
class Api::TareasController < ApplicationController
#  before_action :set_user, only: [:apiRuby]

  def index
    posts =  Tarea.all 
    render json: {status: 'SUCCESS', message: 'Loaded all posts', data: posts}, status: :ok  
  end

  def show
    @curso = (params[:id])
    posts =  Tarea.find_by(id: @curso)
    render json: {status: 'SUCCESS', message: 'Loaded all posts', data: posts}, status: :ok  
  end

  
end