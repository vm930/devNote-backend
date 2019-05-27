class NoteCodesController < ApplicationController
    def index 
        @note_codes = NoteCode.all
        render json: @note_codes
    end 

    def create
            @note_code = NoteCode.create(note_codes_params)
        render json: @note_code
        
    end 

    # NoteCode id: nil, code_id: nil, note_id: nil
   
    private
    def  note_codes_params
        params.require(:note_code).permit(:code_id,:note_id)
    end 
end
