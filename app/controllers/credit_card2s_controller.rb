class CreditCard2sController < ApplicationController
  before_action :set_credit_card2, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! 
  # GET /credit_card2s
  # GET /credit_card2s.json
  def index
    if current_user.role=='admin'
    @credit_card2s = CreditCard2.all
    else
        @credit_card2s = CreditCard2.where(user_id: current_user.id)
    end
  end
  
  def asociar
    @credit_card2.user_id= current_user.id
  end

  # GET /credit_card2s/1
  # GET /credit_card2s/1.json
  def show
  end

  # GET /credit_card2s/new
  def new
    @credit_card2 = CreditCard2.new
    
  end

  # GET /credit_card2s/1/edit
  def edit
  end

  # POST /credit_card2s
  # POST /credit_card2s.json
  def create
    @credit_card2 = CreditCard2.new(credit_card2_params)
	asociar
    respond_to do |format|
      if @credit_card2.save
        format.html { redirect_to @credit_card2, notice: 'Credit card2 was successfully created.' }

      else
        format.html { render :new }

      end
    end
  end

  # PATCH/PUT /credit_card2s/1
  # PATCH/PUT /credit_card2s/1.json
  def update
    respond_to do |format|
      if @credit_card2.update(credit_card2_params)
        format.html { redirect_to @credit_card2, notice: 'Credit card2 was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  # DELETE /credit_card2s/1
  # DELETE /credit_card2s/1.json
  def destroy
    @credit_card2.destroy
    respond_to do |format|
      format.html { redirect_to credit_card2s_url, notice: 'Credit card2 was successfully destroyed.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_card2
      @credit_card2 = CreditCard2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def credit_card2_params
      params.require(:credit_card2).permit(:name, :last_name, :number, :cvc)
    end
end
