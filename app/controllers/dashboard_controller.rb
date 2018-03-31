class DashboardController < ApplicationController
  def index
    @licenses = License.near(params[:search])
  end
end
