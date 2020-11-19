class InsumosController < ApplicationController
  before_action :set_insumo, only: [:show, :edit, :update, :destroy]

  
  def index
    @insumos = Insumo.all
  end


  def show
  end

  
  def new
    @insumo = Insumo.new
  end


  def edit
  end


  def create
    @insumo = Insumo.new(insumo_params)

    respond_to do |format|
      if @insumo.save
        format.html { redirect_to @insumo, notice: 'El insumo fue creado.' }

      else
        format.html { render :new }

      end
    end
  end

 
  def update
    respond_to do |format|
      if @insumo.update(insumo_params)
        format.html { redirect_to @insumo, notice: 'Insumo fue actualizado.' }

      else
        format.html { render :edit }

      end
    end
  end


  def destroy
    @insumo.destroy
    respond_to do |format|
      format.html { redirect_to insumos_url, notice: 'Insumo fue eliminado.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumo
      @insumo = Insumo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def insumo_params
      params.require(:insumo).permit(:tipo, :cant)
    end
end
