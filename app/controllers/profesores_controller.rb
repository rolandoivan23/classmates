class ProfesoresController < ApplicationController
  def index
    @profesores = Profesor.all
  end

  def new
    @profesor = Profesor.new
  end

  def create
    @profesor = Profesor.new(params[:profesor])
    if @profesor.save
      flash[:notice] = "Profesor guardado correctamente"
      redirect_to @profesor
    else
      render 'new'
    end
  end

  def edit
    @profesor = Profesor.find(params[:id])
  end

  def show
    @profesor = Profesor.find(params[:id])
  end
end
