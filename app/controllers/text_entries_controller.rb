class TextEntriesController < ApplicationController
  before_action :set_text_entry, only: [:show, :update, :destroy]
  def index 
    text_entries = TextEntry.all
    

    render json: text_entries
  end 

  def show 
    params[:embed]

    text_entry = TextEntry.find(params[:id])

    render json: text_entry
  end

  def update
    text_entry = TextEntry.find(params[:id])
    text_entry.update(text_entry_params)
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

  def other_stories
    text_entries = (TextEntry.all)
    winnowed_text_entries = text_entries.select{|text_entry|text_entry.user_id !=(params[:id]).to_i}

    size = 10
    tenlist = winnowed_text_entries.slice(0,size)

    render json: tenlist
  end

  def top_five
    text_entries = (TextEntry.all)
    sorted_text_entries = text_entries.sort_by { |text_entry| -text_entry.likes }

    size = 5
    fivelist = sorted_text_entries.slice(0,size)

    render json: fivelist
  end

  
  private

  def text_entry_params
    params.require(:text_entry).permit(:user_id, :mad_lib_id, :user_inputs, :title, :likes)
  end

  def set_text_entry
    text_entry = TextEntry.find(params[:id])
  end

end




