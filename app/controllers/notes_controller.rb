class NotesController < ApplicationController
      def index 
        @notes = Note.all
        render json: @notes
    end 

    def create
        # byebug
        @note = Note.create(note_params)
        render json: @note
    end 

    def show
        @note = Note.find_by(id: params[:id])
        render json: @note
    end 

    private
    def note_params
        params.require(:note).permit(:user_id,:note_value)
    end 
end
