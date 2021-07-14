class StaticPagesController < ApplicationController
  def index
    gon.coordinates = Coordinate.all
  end

  def sample
  end

  def save
    coordinate = Coordinate.new(coordinate_params)
    coordinate.save!
  end

  private
  def coordinate_params
    params.permit(:x, :y, :url, :width)
  end
end
