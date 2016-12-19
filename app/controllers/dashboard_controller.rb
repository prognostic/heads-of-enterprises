class DashboardController < ApplicationController
  def index
    @activities = PublicActivity::Activity.last(20)
  end
end