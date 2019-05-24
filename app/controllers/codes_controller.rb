class CodesController < ApplicationController
    def index 
        @codes = Code.all
        render json: @codes
    end 

    def create
        if Code.find_by(code_params)
            puts "code snippet already exist"
        else
            @code = Code.create(code_params)
        # @note = Note.find_or_create_by(note_params)
        #    byebug
        render json: @code
        end
        
    end 

    def show
        @code = Code.find_by(id: params[:id])
        render json: @code
    end 

    # def update
    #     @note = Note.find_by(id: params[:id])
    #     @note.update(note_params)
    #     @note.save
    #     render json: @note
    # end 

    # def destroy
    #     @note = Note.find_by(id:params[:id])
    #     @note.destroy
    # end 

    private
    def code_params
        params.require(:code).permit(:code_id,:code_value,:title,:style,:mode)
    end 
end
