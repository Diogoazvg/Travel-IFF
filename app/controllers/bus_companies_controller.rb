class BusCompaniesController < ApplicationController
  before_action :set_bus_company, only: [:show, :edit, :update, :destroy]

  # GET /bus_companies
  # GET /bus_companies.json
  def index
    @bus_companies = BusCompany.all.order('created_at DESC').page params[:page]
  end

  # GET /bus_companies/1
  # GET /bus_companies/1.json
  def show
  end

  # GET /bus_companies/new
  def new
    @bus_company = BusCompany.new
  end

  # GET /bus_companies/1/edit
  def edit
  end

  # POST /bus_companies
  # POST /bus_companies.json
  def create
    @bus_company = BusCompany.new(bus_company_params)

    respond_to do |format|
      if @bus_company.save
        format.html { redirect_to @bus_company, notice: t('Bus company was successfully created.') }
        format.json { render :show, status: :created, location: @bus_company }
      else
        format.html { render :new }
        format.json { render json: @bus_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bus_companies/1
  # PATCH/PUT /bus_companies/1.json
  def update
    respond_to do |format|
      if @bus_company.update(bus_company_params)
        format.html { redirect_to @bus_company, notice: t('Bus company was successfully updated.') }
        format.json { render :show, status: :ok, location: @bus_company }
      else
        format.html { render :edit }
        format.json { render json: @bus_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_companies/1
  # DELETE /bus_companies/1.json
  def destroy
    @bus_company.destroy
    respond_to do |format|
      format.html { redirect_to bus_companies_url, notice: t('Bus company was successfully destroyed.') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus_company
      @bus_company = BusCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bus_company_params
      params.require(:bus_company).permit(:cnpj, :name)
    end
end
