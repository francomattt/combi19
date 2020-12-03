class TicketsController < ApplicationController
    before_action :authenticate_user!




 def index
 
 	if (current_user.role=='admin')
   		@tickets=Ticket.all
   	else
 	
       	@tickets = Ticket.where(user_id: current_user.id)     
       	
       end
       
 end
 
def search
	if (current_user.role=='admin')
   		@tickets=Travel.all
   	else	
       	@tickets=Ticket.where(user_id: current_user.id)    
       end
 
end

 def buy_ticket
       @ticket = Ticket.new(ticket_params)
	asociar
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'El pasaje fue creado.' }

      else
        format.html { render :buy_ticket }

      end
    end
 end
 
 
 def asociar
    @ticket.user_id= current_user.id
    @ticket.price= Travel.find(@ticket.travel_id).price
  end
  
  def new
    @ticket = Ticket.new
    @ticket.travel_id=params[:travel_id].to_i
  end
  
  def show
  end

  def closed
    @tickets = @tickets.tickets_closed
  end
   def update
    respond_to do |format|
      if @ticket.update(ticket_params)
        format.html { redirect_to @ticket, notice: 'El pasaje fue actualizado' }

      else
        format.html { render :edit }
      end
    end
  end
  

def create
    @ticket = Ticket.new(ticket_params)
	asociar
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to root_path, notice: 'El pasaje fue creado.' }

      else
        format.html { render :new }
      end
    end
  end
   # Only allow a list of trusted parameters through.
    def ticket_params
      params.permit( :travel_id)
    end
end
