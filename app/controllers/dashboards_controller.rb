class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @percentage = current_user.pregnancy_percentage.to_i
    @start_date = current_user.pregnancy_start_date
    @end_date = @start_date + 9.months
  end
end

