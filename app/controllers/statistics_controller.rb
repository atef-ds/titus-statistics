class StatisticsController < ApplicationController

  def index
    @statistics = ::StatisticsService.new().call
  end

end
