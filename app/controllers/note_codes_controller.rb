class NoteCodesController < ApplicationController
    def index 
        @note_codes = NoteCode.all
        render json: @note_codes
    end 

    def create
        # if NoteCode.find_by(note_codes_params)
        #     puts "code snippet or note already exist"
        # else
        # byebug
            @note_code = NoteCode.create(note_codes_params)
        render json: @note_code
        # end
        
    end 

    # NoteCode id: nil, code_id: nil, note_id: nil
   
    private
    def  note_codes_params
        params.require(:note_code).permit(:code_id,:note_id)
    end 
end
