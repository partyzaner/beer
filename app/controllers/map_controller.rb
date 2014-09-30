class MapController < ApplicationController
  def index
    #@users = [{lat: 53.91, lng: 27.6}, {lat: 53.9, lng: 27.5}]
    @points = Point.all
    @hash = Gmaps4rails.build_markers(@points) do |point, marker|
      marker.lat point[:lat]
      marker.lng point[:lng]
    end
  end

  private

  def get_map
    5+6
  end
  helper_method :get_map
end
