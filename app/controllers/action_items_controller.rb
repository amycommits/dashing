class ActionItemsController < ApplicationController
  before_action :set_action_item, only: [:show, :edit, :update, :destroy]

  # GET /action_items
  # GET /action_items.json
  def index
    @action_items = ActionItem.all
    @projects = Project.all
    @action_info = ActionItem.all.select(:id, :action_number,:total_action)
    #render json: @action_info
  end

  # GET /action_items/1
  # GET /action_items/1.json
  def show
    @action_items = ActionItem.find(params[:id])

    #@action_items = ActionItem.where(accession_number: params[:accession_number])
  end

  def show_all_actions
    @action_item.where(accession_number: params[:accession_number])
  end

  def actions

  end
  # GET /action_items/new
  def new
    @projects = Project.all 
    @action_item = ActionItem.new
  end

  # GET /action_items/1/edit
  def edit
  end

  # POST /action_items
  # POST /action_items.json
  def create
    @action_item = ActionItem.new(action_item_params)

    respond_to do |format|
      if @action_item.save
        format.html { redirect_to @action_item, notice: 'Action item was successfully created.' }
        format.json { render :show, status: :created, location: @action_item }
      else
        format.html { render :new }
        format.json { render json: @action_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /action_items/1
  # PATCH/PUT /action_items/1.json
  def update
    respond_to do |format|
      if @action_item.update(action_item_params)
        format.html { redirect_to @action_item, notice: 'Action item was successfully updated.' }
        format.json { render :show, status: :ok, location: @action_item }
      else
        format.html { render :edit }
        format.json { render json: @action_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_items/1
  # DELETE /action_items/1.json
  def destroy
    @action_item.destroy
    respond_to do |format|
      format.html { redirect_to action_items_url, notice: 'Action item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_action_item
      @action_item = ActionItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def action_item_params
      params.require(:action_item).permit(:accession_number, :description, :action_number, :project_id)
    end
end
