class EstudantesController < ApplicationController

  def show
    @estudante = Estudante.find(params[:id])
  end
  
  def new
    @estudante = Estudante.new
  end
  
  def create
    @estudante = Estudante.new(p)
    if(@estudante.save)
      flash[:notice] = "Estudante cadastrado com sucesso"
      redirect_to estudante_path(@estudante)
    else
      flash[:notice] = "Erro"
      render :action => :new
    end
  end
  
  private
  
  def p
    params.require(:estudante).permit(:nome,:idade)
  end

end
