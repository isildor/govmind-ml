class MachineLearningsController < ApplicationController
  before_action :set_machine_learning, only: [:show, :edit, :update, :destroy]

  # GET /machine_learnings
  # GET /machine_learnings.json
  def index
    @machine_learnings = MachineLearning.all
  end

  # GET /machine_learnings/1
  # GET /machine_learnings/1.json
  def show
  end

  # GET /machine_learnings/new
  def new
    @machine_learning = MachineLearning.new
  end

  # GET /machine_learnings/1/edit
  def edit
  end

  # POST /machine_learnings
  # POST /machine_learnings.json
  def create
    @machine_learning = MachineLearning.new(machine_learning_params)

    respond_to do |format|
      if @machine_learning.save
        format.html { redirect_to @machine_learning, notice: 'Machine learning was successfully created.' }
        format.json { render :show, status: :created, location: @machine_learning }
      else
        format.html { render :new }
        format.json { render json: @machine_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /machine_learnings/1
  # PATCH/PUT /machine_learnings/1.json
  def update
    respond_to do |format|
      if @machine_learning.update(machine_learning_params)
        format.html { redirect_to @machine_learning, notice: 'Machine learning was successfully updated.' }
        format.json { render :show, status: :ok, location: @machine_learning }
      else
        format.html { render :edit }
        format.json { render json: @machine_learning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /machine_learnings/1
  # DELETE /machine_learnings/1.json
  def destroy
    @machine_learning.destroy
    respond_to do |format|
      format.html { redirect_to machine_learnings_url, notice: 'Machine learning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine_learning
      @machine_learning = MachineLearning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def machine_learning_params
      params.require(:machine_learning).permit(:name)
    end
end
