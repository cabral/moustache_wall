class MoustachesController < ApplicationController

  def index
    @moustaches = Moustache.all
  end

end
