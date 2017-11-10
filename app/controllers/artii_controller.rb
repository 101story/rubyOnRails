class ArtiiController < ApplicationController
  def index
  end

  def show
    
    inputtext = params[:inputtext]
    fonts = params[:fonts]
    
    a = Artii::Base.new :font => fonts
    @output = a.asciify(inputtext)
    
  end
end
