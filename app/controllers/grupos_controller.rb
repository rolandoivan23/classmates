class GruposController < ApplicationController
  def index
    @grupos = Grupo.all
  end

  def new
    @grupo = Grupo.new
  end

  def create
    @grupo = Grupo.new(params[:grupo])
    if @grupo.save
      flash[:notice] = "Grupo guardado correctamente"
      redirect_to @grupo
    else
      render 'new'
    end
  end

  def edit
    @grupo = Grupo.find(params[:id])
  end

  def show
    @grupo = Grupo.find(params[:id])
  end
end
