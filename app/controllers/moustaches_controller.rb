class MoustachesController < ApplicationController

  def index
    @moustaches = Moustache.all
  end
  
  def new
    @moustache = Moustache.new
  end

end
