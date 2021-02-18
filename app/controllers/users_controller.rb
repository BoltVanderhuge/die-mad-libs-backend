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
    likes = user.text_entries.find(params[:text_id]).likes
    response = { :inputs => userinput, :mad_story => mad_story, :likes => likes }
    render json: response
  end

  def create 
    user = User.create(user_params)
   
      if user.id != nil
        render json: user 
      else
        render json: {status: "error", code: 4000, message: 'Username is already taken'}
      end
  
  end

  def destroy
    deleteuser = User.find(params[:id])
    deleteuser.destroy
  end

  def get_user
    user = User.where(name: params[:name]).where(age: params[:age])
    render json: user 
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end

end
