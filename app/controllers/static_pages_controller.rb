class StaticPagesController < ApplicationController
  def index
  end

  def sample
  end

  def save
    @data = params[:data]
    debugger
  end
end
