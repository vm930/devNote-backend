class NotesController < ApplicationController
    def index 
        @notes = Note.all
        render json: @notes
    end 

    def create
        @note = Note.create(note_params)
        render json: @note
    end 

    def show
        @note = Note.find_by(id: params[:id])
        render json: @note
    end 

    def update
        @note = Note.find_by(id:params[:id])
        @note.update(note_value: params[:note_value].to_s)
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
