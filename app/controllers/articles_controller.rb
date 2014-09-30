class ArticlesController < ApplicationController
  def index
    # @point = Point.index(lat:53.91, lng:27.6).save
  end

  def create
    #render plain: params[:articles].inspect
    @point = Point.new(permitted_params)
    @point.save
    redirect_to article_path(@point)
  end

  def show
    @point = Point.find(params[:id])
  end

  private

  def permitted_params
    params.require(:articles).permit(:lat, :lng)
  end
end
