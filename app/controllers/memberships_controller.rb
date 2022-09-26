class MembershipsController < ApplicationController

    def index
       render json: Membership.all, status: :ok
    end

    def show
      render json: Membership.find(params[:id]), status: :ok
    end


    # can also use create! and add a rescue for exception error
    def create
        new_membership = Membership.create(membership_params)
          if new_membership.id
            render json: new_membership, status: :created
          else
            render json: { error:"Invalid data" }, status: :bad_request
          end
    end

private 

    def membership_params
        params.permit(:client_id, :gym_id, :charge)
    end
end
