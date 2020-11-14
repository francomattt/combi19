class WaysController < ApplicationController
  before_action :set_way, only: [:show, :edit, :update, :destroy]

  def index
    @ways = Way.availables
  end

  def show
  end

  def new
    @way = Way.new
  end

  def edit
  end

  def create
    @way = Way.new(way_params)

    respond_to do |format|
      if @way.save
        format.html { redirect_to ways_path, notice: 'La ruta se cargó correctamente.' }
      else
        format.html { render :new }
       end
    end
  end

  def update
    respond_to do |format|
      if @way.update(way_params)
        format.html { redirect_to ways_path, notice: 'La ruta se actualizó correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @way.deleted_at=Date.today
    @way.save
    respond_to do |format|
      format.html { redirect_to ways_path, notice: 'La ruta se eliminó correctamente.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_way
      @way = Way.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def way_params
      params.require(:way).permit(:description, :start, :end_way)
    end
end
