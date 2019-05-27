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

    def update
        # byebug
        @code = Code.find_by(id: params[:id])
        @code.update(code_params)
        @code.save
        render json: @code
    end 

    def destroy
        code = Code.find_by(id:params[:id])
        code.destroy
        render json: code
    end 

    private
    def code_params
        params.require(:code).permit(:code_id,:code_value,:title,:style,:mode)
    end 
end
