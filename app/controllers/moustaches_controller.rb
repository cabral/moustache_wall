class MoustachesController < ApplicationController

  def index
    @moustaches = Moustache.all
  end
  
  def new
    @moustache = Moustache.new
  end

  def create
    @moustache = Moustache.create params[:moustache]
    redirect_to moustaches_path
  end

end
