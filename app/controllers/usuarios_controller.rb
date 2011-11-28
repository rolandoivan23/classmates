class UsuariosController < ApplicationController
  
  def index
    @usuarios = Usuario.all.paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @usuario = Usuario.find(params[:id])
    if @usuario.post_pendientes == 0
      @pr_pg = 3
    else
      @pr_pg = 2
    end
    @posts = current_usuario.posts.paginate(:page => params[:page], :per_page => @pr_pg)
    @post_pendientes = Usuario.find(current_usuario.id).post_pendientes
  end

  def new
    @usuario = Usuario.new
  end

  def create
     @usuario = Usuario.create(params[:usuario])
    if params[:admin] == "1"
      @usuario.add_role 'admin'
    end

    @usuario.save do |result|
      if result
        redirect_to usuarios_url
      else
        render 'new'
      end
    end
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def update
    @usuario = Usuario.find(params[:id])
    respond_to do |format|
      if @usuario.update_attributes(params[:usuario])
        format.html { redirect_to @usuario, :notice=> 'Usuario actualizado correctamente.' }
        format.json { head :ok }
      else
        format.html { render :action=> "edit" }
        format.json { render json=> @usuario.errors, status=> :unprocessable_entity }
      end
    end
  end
end
