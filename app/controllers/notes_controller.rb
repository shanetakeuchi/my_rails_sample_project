class NotesController < ApplicationController

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      flash[:success] = "Note successfully created"
      redirect_to 'notes#show'
    else
      render 'new'
    end
  end

  private
    def note_params
      params.require(:note).permit(:title, :info, :level)
    end

 

end
