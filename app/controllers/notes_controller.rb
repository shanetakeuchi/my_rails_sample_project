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
      redirect_to @note
    else
      render 'new'
    end
  end
  
  def edit
    @note = Note.find(params[:id])
  end
  
  def update
    @note = Note.find(params[:id])
    if @note.update(note_params)
      flash[:success] = "Note updated"
      redirect_to @note
    else
      render 'edit'
    end
  end
  
  def index
    @notes = Note.paginate(page: params[:page])
  end

  def destroy
    Note.find(params[:id]).destroy
    flash[:success] = "Note deleted"
    redirect_to notes_url
  end

  private
    def note_params
      params.require(:note).permit(:title, :content, :level)
    end

end
