class TextEntriesController < ApplicationController
  def index 
    text_entries = TextEntry.all 

    render json: text_entries
  end 

  def show 
    params[:embed]

    text_entry = TextEntry.find(params[:id])

    render json: text_entry
  end

  def create 
    new_text_entry = TextEntry.create(text_entry_params)

    render json: new_text_entry 
  end

  def destroy
    delete_text_entry = TextEntry.find(params[:id])
    delete_text_entry.destroy
  end

  
  private

  def text_entry_params
    params.require(:text_entry).permit(:user_id, :mad_lib_id, :user_inputs, :title)
  end

end
