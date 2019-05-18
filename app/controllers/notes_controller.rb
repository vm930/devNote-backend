class NotesController < ApplicationController
    def index 
        @notes = Note.all
        render json: @notes
    end 

    def create
        @note = Note.find_or_create_by(note_params)
        render json: @note
    end 

    def show
        @note = Note.find_by(id: params[:id])
        render json: @note
    end 

    def update
        
        @note = Note.find_by(id:params[:id])
        @note.update(note_value: params[:note_value])
        @note.save
        render json: @note
    end 

    def destroy
        @note = Note.find_by(id:params[:id])
        @note.destroy
    end 

    private
    def note_params
        params.require(:note).permit(:user_id,:note_value)
    end 
end
