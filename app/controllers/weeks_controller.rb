class WeeksController < ApplicationController
  before_action :find_week!, only: [:edit, :destroy]
  def index
    @weeks = Week.all
  end

  def new
    @week = Week.create
    redirect_to edit_week_path(@week)
  end

  def edit
  end

  def destroy
    @week.destroy

    redirect_to weeks_path
  end

  private

  def find_week!
    @week = Week.find(params[:id])
  end
end