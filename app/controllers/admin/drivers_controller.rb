class Admin::DriversController < AdminController
  before_action :set_admin_driver, only: [:show, :edit, :update, :destroy]

  # GET /admin/drivers
  # GET /admin/drivers.json
  def index
    @admin_drivers = Driver.all
  end

  # GET /admin/drivers/1
  # GET /admin/drivers/1.json
  def show
  end

  # GET /admin/drivers/new
  def new
    @admin_driver = Driver.new
  end

  # GET /admin/drivers/1/edit
  def edit
  end

  # POST /admin/drivers
  # POST /admin/drivers.json
  def create
    @admin_driver = Driver.new(admin_driver_params)

    respond_to do |format|
      if @admin_driver.save
        format.html { redirect_to @admin_driver, notice: 'Driver was successfully created.' }
        format.json { render :show, status: :created, location: @admin_driver }
      else
        format.html { render :new }
        format.json { render json: @admin_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/drivers/1
  # PATCH/PUT /admin/drivers/1.json
  def update
    respond_to do |format|
      if @admin_driver.update(admin_driver_params)
        format.html { redirect_to @admin_driver, notice: 'Driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_driver }
      else
        format.html { render :edit }
        format.json { render json: @admin_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/drivers/1
  # DELETE /admin/drivers/1.json
  def destroy
    @admin_driver.destroy
    respond_to do |format|
      format.html { redirect_to admin_drivers_url, notice: 'Driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_driver
      @admin_driver = Driver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_driver_params
      params.require(:admin_driver).permit(:cnh, :category, :person_id, :vehicle_id)
    end
end
