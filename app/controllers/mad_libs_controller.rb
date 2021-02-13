class MadLibsController < ApplicationController
  def index 
    mad_libs = MadLib.all 

    render json: mad_libs
  end 

  def show 
    params[:embed]

    mad_lib = MadLib.find(params[:id])

    render json: mad_lib
  end
end
