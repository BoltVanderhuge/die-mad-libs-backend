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
    # if new_text_entry.valid?
     
    # else
      
      
    # end
  end

  
  private

  def text_entry_params
    params.require(:text_entry).permit(:user_id, :mad_lib_id, :user_inputs, :title)
  end

end
