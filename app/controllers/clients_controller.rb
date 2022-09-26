class ClientsController < ApplicationController

    def show
        client = Client.find_by(id:params[:id])
          if client
            render json: { client:client, total_fees:client.total_fees}, status: :ok
          else
            render json: { error:"Client not found" }, status: :bad_request
            end
    end

    def update
        new_client = Client.find_by(id:params[:id])
          if new_client
            new_client.update(client_params)
            render json: new_client, status: :ok
          else
            render json: { error: "Client not found" }
          end
    end

    private

    def client_params
        params.permit(:name, :age)
    end
end