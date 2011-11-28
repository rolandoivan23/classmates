class UsuarioSessionsController < ApplicationController


  def new
    @usuario_session = UsuarioSession.new
  end

  def create
    @usuario_session = UsuarioSession.new(params[:usuario_session])
   
    @usuario_session.save do |result|
    if result
      
       redirect_to current_usuario
    else
    
      render :action => :new
    end
    end
  end


  def destroy
    current_usuario_session.destroy
    redirect_to new_usuario_session_path
  end

  end


