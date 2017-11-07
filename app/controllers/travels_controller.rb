class TravelsController < ApplicationController
  before_action :set_travel, only: [:show]

  # GET /travels
  # GET /travels.json
  def index
    @q = Travel.ransack(params[:q])
    @travels = @q.result(distinct: true).page params[:page]
  end

  # GET /travels/1
  # GET /travels/1.json
  def show
    respond_to do |format|
        format.html
        format.pdf { render pdf: "travels-list-report",
          header: {center: "RELATÓRIO DE VIAGENS"},
          footer: { center: "[page] of [topage]" }
        }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def travel_params
      params.require(:travel).permit(:name, :day, :description)
    end
end
