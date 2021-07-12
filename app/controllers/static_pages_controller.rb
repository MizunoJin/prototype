class StaticPagesController < ApplicationController
  def index
    @coordinate = Coordinate.all
  end

  def sample
  end

  def save
    coordinate = Coordinate.new(coordinate_params)
    coordinate.save!
  end

  private
  def coordinate_params
    params.permit(:x, :y, :url)
  end
end
