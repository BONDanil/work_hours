class TimeRangesController < ApplicationController
  before_action :find_week!
  before_action :find_day!
  before_action :find_time_range!, only: [:edit, :update, :destroy]

  def new
    @time_range = TimeRange.new
  end

  def create
    @day.time_ranges.create(time_range_params)

    redirect_to edit_week_day_path(@week, @day)
  end

  def edit
  end

  def update
    @time_range.update(time_range_params)

    redirect_to edit_week_day_path(@week, @day)
  end

  def destroy
    @time_range.destroy

    redirect_to edit_week_day_path(@week, @day)
  end

  private

  def time_range_params
    params.require(:time_range).permit(:time_in, :time_out)
  end

  def find_week!
    @week = Week.find(params[:week_id])
  end

  def find_day!
    @day = Day.find(params[:day_id])
  end

  def find_time_range!
    @time_range = TimeRange.find(params[:id])
  end
end