class MLmodelsController < ApplicationController
  before_action :set_m_lmodel, only: [:show, :edit, :update, :destroy]

  # GET /m_lmodels
  # GET /m_lmodels.json
  def index
    @m_lmodels = MLmodel.all
  end

  # GET /m_lmodels/1
  # GET /m_lmodels/1.json
  def show
  end

  # GET /m_lmodels/new
  def new
    @m_lmodel = MLmodel.new
  end

  # GET /m_lmodels/1/edit
  def edit
  end

  # POST /m_lmodels
  # POST /m_lmodels.json
  def create
    @m_lmodel = MLmodel.new(m_lmodel_params)

    respond_to do |format|
      if @m_lmodel.save
        format.html { redirect_to @m_lmodel, notice: 'M lmodel was successfully created.' }
        format.json { render :show, status: :created, location: @m_lmodel }
      else
        format.html { render :new }
        format.json { render json: @m_lmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_lmodels/1
  # PATCH/PUT /m_lmodels/1.json
  def update
    respond_to do |format|
      if @m_lmodel.update(m_lmodel_params)
        format.html { redirect_to @m_lmodel, notice: 'M lmodel was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_lmodel }
      else
        format.html { render :edit }
        format.json { render json: @m_lmodel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_lmodels/1
  # DELETE /m_lmodels/1.json
  def destroy
    @m_lmodel.destroy
    respond_to do |format|
      format.html { redirect_to m_lmodels_url, notice: 'M lmodel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_lmodel
      @m_lmodel = MLmodel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_lmodel_params
      params[:m_lmodel]
    end
end
