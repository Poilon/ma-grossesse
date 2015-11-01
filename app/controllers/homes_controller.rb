class HomesController < ApplicationController
  before_filter :redirect_if_logged_in

  def index
  end

  private
  def redirect_if_logged_in
    redirect_to [:dashboards] if current_user
  end
end
