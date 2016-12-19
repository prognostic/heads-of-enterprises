class DashboardController < ApplicationController
  def index
    @activities = PublicActivity::Activity.order('updated_at desc').limit(20)
  end
end