class ArticlesController < ApplicationController
  def index
    # @point = Point.index(lat:53.91, lng:27.6).save
    @points = Point.all
  end

  def create
    @point = Point.new(permitted_params)
    @point.save
    redirect_to article_path(@point)
  end

  def show
    @point = Point.find(params[:id])
  end

  def destroy
    @point = Point.find(params[:id])
    @point.destroy
    redirect_to articles_path
  end

  private

  def permitted_params
    params.require(:articles).permit(:lat, :lng)
  end
end
