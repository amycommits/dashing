class DashingD3ExamplesController < ApplicationController
  before_action :set_dashing_d3_example, only: [:show, :edit, :update, :destroy,:d3_arrays]

  # GET /dashing_d3_examples
  # GET /dashing_d3_examples.json
  def index
    @dashing_d3_examples = DashingD3Example.all
  end

  # GET /dashing_d3_examples/1
  # GET /dashing_d3_examples/1.json
  def show
  end

  # GET /dashing_d3_examples/new
  def new
    @dashing_d3_example = DashingD3Example.new
  end

  # GET /dashing_d3_examples/1/edit
  def edit
  end

  def arrays
  end
  def adding_dom_elements
  end
  def svg_fundamentals
  end
  def adding_svg_elements
  end
  def data_operator
  end
  def javascript_functions
  end
  def using_data_bound_to_dom
  end
  def using_svg_coordinate_space
  end
  def json_intro
    @action_items = ActionItem.all
    @projects = Project.all
    @action_info = ActionItem.all.select(:id, :action_number,:total_action)
    @dExample = DashingD3Example.all
  end
  def json_basic_shapes
      @action_info = ActionItem.all.select(:id, :accession_number,:action_number,:total_action,:created_at)
      @rectangle_info = DashingD3Example.select(:x,:y,:width,:height,:id,:fill)
      @one_rectangle = DashingD3Example.select(:x,:y,:width,:height,:fill)

  end
  def svg_json_paths
    @linePaths = DashingD3Example.lineInfo
  end
  def dynamic_svg_coordinate_space
    #@randCoordinares = RandomizeResults.rand_five
    @linePaths = DashingD3Example.lineInfo

  end
  def d3_scales
    @linePaths = DashingD3Example.lineInfo
end
def svg_group_element
   @linePaths = DashingD3Example.lineInfo
end
def svg_text_elements
   @text_action_info = ActionItem.limit(5).select(:id, :accession_number,:action_number,:total_action,:description)
end
def margin_convention
end
def dates_and_times
end
def d3_axes
end
def axes_manipulation
end
def scales_for_data
     @text_action_info = ActionItem.limit(5).select(:id, :accession_number,:action_number,:total_action,:description)
end
def first_half_together
  @text_action_info = ActionItem.limit(5).order("random()").select(:id, :accession_number,:action_number,:total_action,:description)
end
  # POST /dashing_d3_examples
  # POST /dashing_d3_examples.json
  def create
    @dashing_d3_example = DashingD3Example.new(dashing_d3_example_params)

    respond_to do |format|
      if @dashing_d3_example.save
        format.html { redirect_to @dashing_d3_example, notice: 'Dashing d3 example was successfully created.' }
        format.json { render :show, status: :created, location: @dashing_d3_example }
      else
        format.html { render :new }
        format.json { render json: @dashing_d3_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashing_d3_examples/1
  # PATCH/PUT /dashing_d3_examples/1.json
  def update
    respond_to do |format|
      if @dashing_d3_example.update(dashing_d3_example_params)
        format.html { redirect_to @dashing_d3_example, notice: 'Dashing d3 example was successfully updated.' }
        format.json { render :show, status: :ok, location: @dashing_d3_example }
      else
        format.html { render :edit }
        format.json { render json: @dashing_d3_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashing_d3_examples/1
  # DELETE /dashing_d3_examples/1.json
  def destroy
    @dashing_d3_example.destroy
    respond_to do |format|
      format.html { redirect_to dashing_d3_examples_url, notice: 'Dashing d3 example was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashing_d3_example
      @dashing_d3_example = DashingD3Example.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dashing_d3_example_params
      params.require(:dashing_d3_example).permit(:name, :title, :cx, :cy, :x, :y, :width, :height, :radius, :action_number, :total_action, :elapsed_days, :total_days)
    end
end
