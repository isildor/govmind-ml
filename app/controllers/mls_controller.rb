class MlsController < ApplicationController
  before_action :set_ml, only: [:show, :edit, :update, :destroy]

  # GET /mls
  # GET /mls.json
  def index
    @mls = Ml.all
  end

  # GET /mls/1
  # GET /mls/1.json
  def show
  end

  # GET /mls/new
  def new
    @ml = Ml.new
  end

  # GET /mls/1/edit
  def edit
  end

  # POST /mls
  # POST /mls.json
  def create
    @ml = Ml.new(ml_params)

    respond_to do |format|
      if @ml.save
        format.html { redirect_to @ml, notice: 'Ml was successfully created.' }
        format.json { render :show, status: :created, location: @ml }
      else
        format.html { render :new }
        format.json { render json: @ml.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mls/1
  # PATCH/PUT /mls/1.json
  def update
    respond_to do |format|
      if @ml.update(ml_params)
        format.html { redirect_to @ml, notice: 'Ml was successfully updated.' }
        format.json { render :show, status: :ok, location: @ml }
      else
        format.html { render :edit }
        format.json { render json: @ml.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mls/1
  # DELETE /mls/1.json
  def destroy
    @ml.destroy
    respond_to do |format|
      format.html { redirect_to mls_url, notice: 'Ml was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ml
      @ml = Ml.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ml_params
      params.require(:ml).permit(:name)
    end
end
