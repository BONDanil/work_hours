class DaysController < ApplicationController
  before_action :find_week!, only: [:new, :create, :destroy]
  before_action :find_day!, only: [:edit, :destroy]

  def new
    @day = Day.new
  end

  def create
    @week.days.create(day_params)

    redirect_to edit_week_path(@week)
  end

  def edit
  end

  def destroy
    @day.destroy

    redirect_to edit_week_path(@week)
  end

  private

  def find_week!
    @week = Week.find(params[:week_id])
  end

  def find_day!
    @day = Day.find(params[:id])
  end

  def day_params
    params.require(:day).permit(:date)
  end
end