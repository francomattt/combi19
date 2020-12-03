class CombisController < ApplicationController
  before_action :set_combi, only: [:show, :edit, :update, :destroy]


  def index
    @combis = Combi.availables
  end

 
  def show
  end


  def new
    @combi = Combi.new
  end

 
  def edit
  end


  def create
    @combi = Combi.new(combi_params)

    respond_to do |format|
      if @combi.save
        format.html { redirect_to @combi, notice: 'La combi fue creada con éxito.' }

      else
        format.html { render :new }

      end
    end
  end


  def update
    respond_to do |format|
      if @combi.update(combi_params)
        format.html { redirect_to @combi, notice: 'La combi fue actualizada con éxito.' }

      else
        format.html { render :edit }

      end
    end
  end


  def destroy
    @combi.deleted_at=Date.today
    @combi.user_id=nil
    if @combi.update(:user_id => nil)
    
    
   
    respond_to do |format|
      format.html { redirect_to combis_url, notice: 'La combi fue eliminada con éxito.' }
	
	end
	else
	    respond_to do |format|
	format.html { redirect_to combis_url, notice: 'No se pudo eliminar la combi.' }
	end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combi
      @combi = Combi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def combi_params
      params.require(:combi).permit(:registration_plate, :cap, :model, :bus_type, :user_id)
    end
end
