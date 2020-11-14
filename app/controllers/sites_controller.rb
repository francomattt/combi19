class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  def index
    @sites = Site.availables
  end

  def show
  end

  def new
    @site = Site.new
  end

  def edit
  end

 def create
    @site = Site.new(site_params)

    respond_to do |format|
      if @site.save
        format.html { redirect_to @site, notice: 'El destino se cargó correctamente.' }
      else
        format.html { render :new }
      end
    end
  end

   def update
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to @site, notice: 'El destino se actualizó correctamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @site.deleted_at= Date.today
    respond_to do |format|
      format.html { redirect_to sites_url, notice: 'El destino se eliminó correctamente..' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def site_params
      params.require(:site).permit(:name)
    end
end
