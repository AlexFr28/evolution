class TilesController < ApplicationController

  def index
    @tiles = Tile.all
  end
  
end
