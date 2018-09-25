class Api::V1::BadgesController < ApplicationController

  def index
    @badges = Badge.all
    render json: @badges
  end

  def create
    @badge = Badge.create(badge_params)
    render json: @badges
  end

  private

  def badge_params
    params.require(:badges).permit(:name, :player_id)
  end

end
