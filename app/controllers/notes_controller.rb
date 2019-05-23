class NotesController < ApplicationController
    def index 
        @notes = Note.all
        render json: @notes
    end 

    def create
        # byebug
        if Note.find_by(note_params)
            puts "hi"
        else
            @note = Note.create(note_params)
        # @note = Note.find_or_create_by(note_params)

        render json: @note
        end
        
    end 

    def show
        @note = Note.find_by(id: params[:id])
        render json: @note
    end 

    def update
        @note = Note.find_by(id: params[:id])
        @note.update(note_params)
        @note.save
        render json: @note
    end 

    def destroy
        @note = Note.find_by(id:params[:id])
        @note.destroy
    end 

    private
    def note_params
        params.require(:note).permit(:user_id,:note_value,:title)
    end 
end
