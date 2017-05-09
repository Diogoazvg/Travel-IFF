class Admin::BusCompaniesController < AdminController
  before_action :set_admin_bus_company, only: [:show, :edit, :update, :destroy]

  # GET /admin/bus_companies
  # GET /admin/bus_companies.json
  def index
    @admin_bus_companies = BusCompany.all
  end

  # GET /admin/bus_companies/1
  # GET /admin/bus_companies/1.json
  def show
  end

  # GET /admin/bus_companies/new
  def new
    @admin_bus_company = BusCompany.new
  end

  # GET /admin/bus_companies/1/edit
  def edit
  end

  # POST /admin/bus_companies
  # POST /admin/bus_companies.json
  def create
    @admin_bus_company = BusCompany.new(admin_bus_company_params)

    respond_to do |format|
      if @admin_bus_company.save
        format.html { redirect_to admin_bus_company_path, notice: 'Bus company was successfully created.' }
        format.json { render :show, status: :created, location: @admin_bus_company }
      else
        format.html { render :new }
        format.json { render json: @admin_bus_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/bus_companies/1
  # PATCH/PUT /admin/bus_companies/1.json
  def update
    respond_to do |format|
      if @admin_bus_company.update(admin_bus_company_params)
        format.html { redirect_to @admin_bus_company, notice: 'Bus company was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_bus_company }
      else
        format.html { render :edit }
        format.json { render json: @admin_bus_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/bus_companies/1
  # DELETE /admin/bus_companies/1.json
  def destroy
    @admin_bus_company.destroy
    respond_to do |format|
      format.html { redirect_to admin_bus_companies_url, notice: 'Bus company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_bus_company
      @admin_bus_company = BusCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_bus_company_params
      params.require(:admin_bus_company).permit(:cnpj, :name)
    end
end
