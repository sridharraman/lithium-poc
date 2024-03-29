class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @shifts = Shift.all
    respond_with(@shifts)
  end

  def show
    respond_with(@shift)
  end

  def new
    @shift = Shift.new
    respond_with(@shift)
  end

  def edit
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.save
    respond_with(@shift)
  end

  def update
    @shift.update(shift_params)
    respond_with(@shift)
  end

  def destroy
    @shift.destroy
    respond_with(@shift)
  end

  private
    def set_shift
      @shift = Shift.find(params[:id])
    end

    def shift_params
      params.require(:shift).permit(:vehicle_id, :days_of_the_week, :shift_type)
    end
end
