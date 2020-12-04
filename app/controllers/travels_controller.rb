class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :edit, :update, :destroy]

  # GET /travels
  # GET /travels.json
  def index

    #@travels = Travel.all
   
    @travels = Travel.search(params[:search])

  end

  # GET /travels/1
  # GET /travels/1.json
  def show
  end

  # GET /travels/new
  def new
    @travel = Travel.new
  end

  # GET /travels/1/edit
  def edit
  end

  # POST /travels
  # POST /travels.json
def create
    @travel = Travel.new(travel_params)

    respond_to do |format|
      if @travel.save
        format.html { redirect_to @travel, notice: 'Travel was successfully created.' }

      else
        format.html { render :new }

      end
    end
  end



  def update
    respond_to do |format|
      if @travel.update(travel_params)
        format.html { redirect_to @travel, notice: 'Travel was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end



  def destroy
    Travel.where(id: @ticket.travel_id).destroy_all
    @travel.destroy
    respond_to do |format|
      format.html { redirect_to travels_url, notice: 'Travel was successfully destroyed.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def travel_params
      params.require(:travel).permit(:travel_day, :travel_hour, :combi_id, :way_id, :state_id, :price, :search)
    end
end
