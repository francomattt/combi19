class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  
  def index
    @lists = List.all
  end

 
  def show
  end

  def new
    @ticket= Ticket.find(params[:ticket_id])
    @list = List.new
  end

 
  def edit
  end


  def create
    @list = List.new(list_params)
    @list.ticket_id=params[:ticket_id]
    p= Insumo.find(@list.insumo_id)
    
    if p.cant >= @list.cant
    	p.cant -= @list.cant
    	p.save
       @list.price= p.price * @list.cant
       @list.ticket.price += @list.price
       @list.ticket.save
    respond_to do |format|
      if @list.save
      
        format.html { redirect_to tickets_path, notice: 'Insumo agregado correctamente.' }

      else
        
        format.html { render :new }

      end
      end
      else
      
        redirect_to tickets_path, notice:'no hay suficiente stock'
      end
    
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }

      else
        format.html { render :edit }

      end
    end
  end

  
  def destroy
        p= Insumo.find(@list.insumo_id)
  	p.cant += @list.cant
    	p.save
       @list.ticket.price -= @list.price
       @list.ticket.save
    @list.destroy
    respond_to do |format|
        format.html { redirect_to tickets_path, notice: 'Insumo eliminado.' }

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:ticket_id, :insumo_id, :cant)
    end
end
