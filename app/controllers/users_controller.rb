class UsersController < ApplicationController
  def index 
    users = User.all 

    render json: users
  end 

  def show 
    params[:embed]

    user = User.find(params[:id])

    render json: user
  end

  
  def text_entries 
    params[:embed]

    user = User.find(params[:id])
    usert = user.text_entries
    mad = (user.mad_libs).uniq

    response = { :user => usert, :mad => mad }

    render json: response
  end

  def get_saved_story
    user = User.find(params[:id])
    userinput = user.text_entries.find(params[:text_id]).user_inputs
    mad_story = user.text_entries.find(params[:text_id]).mad_lib.story

    response = { :inputs => userinput, :mad_story => mad_story }
    render json: response
  end

end
