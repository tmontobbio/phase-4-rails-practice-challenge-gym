class MembershipsController < ApplicationController

    # We want to index (show all) memberships
    def index
        memberships = Membership.all
        render json: memberships, status: :ok
       # render json: Membership.all, status: :ok
    end

    # take the requested URL and assign the params to that id /memberships/:id
    def show
      render json: Membership.find(params[:id]), status: :ok
    end


    # ask morgan about this more, (why cant I see errors?)
    def create
        render json: Membership.create(membership_params), status: :created
        # new_membership = Membership.create(membership_params)
        # # if new_membership is truthy?
        #   if new_membership
        #     # ececute this
        #     render json: new_membership, status: :created
        #     # otherwise execute this
        #   else
        #     render json: { "error":"Invalid data" }, status: :bad_request
        #   end
    end

# good practice to make these private
private 
     # params strictly allowing only these symbols
    def membership_params
        params.permit(:client_id, :gym_id, :charge)
    end
end
