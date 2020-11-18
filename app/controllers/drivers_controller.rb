class DriversController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
  
    def index
      @users = User.all
    end
  
    def show
    end
  
    def new
      @user = User.new
    end
  
    def edit
    end
  
    def create
      @user = User.new(user_params)
      @user.role = :driver
      
      if @user.save
        redirect_to driver_path(@user), notice: 'El chofer se cargó correctamente.'
      else
        render :new
      end
    end
  
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'El chofer se actualizó correctamente.' }
        else
          format.html { render :edit }
        end
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:name, :last_name, :email, :birth_date, :dni, :password, :password_confirmation)
      end
  end
  