class SpicesController < ApplicationController
    def index
        @spices = Spice.all
        render json: @spices
    end
    #GET /spices/:id
    def show
        @spice = Spice.find(params[:id])
        if @spice
        render json: @spice
        else
        render json: {error: "Spice not found"}, status: 404
        end
        
    end
    #POST /spices
    def create
        @spice = Spice.create(spice_params)
        render json: @spice, status: :created
    end
    #PATCH /spices/:id
    def update
        @spice = Spice.find(params[:id])
        @spice.update(spice_params)
        render json: @spice
    end
    #DELETE /spices/:id
    def destroy
        @spice = Spice.find(params[:id])
        @spice.destroy
        render json: @spice
    end
    private
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
