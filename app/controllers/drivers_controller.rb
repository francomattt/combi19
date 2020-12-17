class DriversController < ApplicationController

    before_action :authenticate_user!

    def index
        @drivers= User.where(role: "driver").availables
    end

    
    def travels
      @travels = Travel.nofinalizados.where(combi: Combi.find_by(user_id:current_user.id))
    end

    def show
      @driver= User.find(params[:id])
    end

    def edit
     @driver= User.find(params[:id])
    end

    def new
        @driver= User.new
    end
    def create
    @driver= User.new(driver_params)
    @driver.role= "driver"
    if @driver.save!
        redirect_to drivers_path, notice: "Registro exitoso"
    else
        redirect_to drivers_path, notice: "No se pudo registrar"
    end
    end
    def update
        @driver = User.find(params[:id])
        if @driver.update(driver_params)
            redirect_to drivers_path
        else 
            render :edit
        end
    end
    def destroy
        @driver= User.find(params[:id])
        @driver.deleted_at= Date.new
        @driver.save
        redirect_to drivers_path

    end
    private
    def driver_params
        params.require(:user).permit([:name,:last_name,:birth_date,:dni,:email,:password,:password_confirmation,:role, :phone_number])
    end
end
