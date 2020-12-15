class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  # GET /comments
  # GET /comments.json
  def index
    @ticket = Ticket.find(params[:ticket_id])
    @comments = @ticket.comments
    
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @ticket = Ticket.find(params[:ticket_id])
    @comment = Comment.new
    @comment.ticket_id = @ticket.id
  end

  # GET /comments/1/edit
  def edit
    @ticket = Ticket.find(params[:ticket_id])
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.ticket_id = Ticket.find(params[:ticket_id]).id
    if @comment.ticket_id == nil
      redirect_to root_path
    else
      respond_to do |format|
        if @comment.save
          format.html { redirect_to ticket_comment_path(@comment.ticket,@comment), notice: 'Comment was successfully created.' }
          format.json { render :show, status: :created, location: @comment }
        else
          format.html { render :new } 
        end
      end 
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to ticket_comment_path(@comment.ticket,@comment), notice: 'El comentario fue editado correctamente.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @ticket= @comment.ticket
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to ticket_comments_path(@ticket), notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:name, :score, :content, :ticket_id)
    end
end
