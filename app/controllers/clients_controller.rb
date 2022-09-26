class ClientsController < ApplicationController

    def show
        render json: Client.find(params[:id]), status: :ok  
    end

    # def show
    #     client = Client.find(params[:id])
    #     memberships = client.memberships.all.length
    #       if client
    #         # WHYYYYYYY
    #         render json: {client, memberships}, status: :ok
    #       else
    #         render json: { "error":"Client not found" }, status: :bad_request
    #         end
    #end

    def update
        render json: Client.find(params[:id]).update(client_params), status: :ok
    end

    private

    def client_params
        params.permit(:name, :age)
    end
end