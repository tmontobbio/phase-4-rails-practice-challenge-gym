class GymsController < ApplicationController

    def show
        gym = Gym.find_by(id:params[:id])
        if gym
            render json: gym, status: :ok
        else
            render json: { error:"Bad Request" },status: :bad_request
        end
    end

    def destroy
        gym = Gym.find_by(id:params[:id])
        if gym
          gym.destroy
          render json: {}, status: :ok
        else
          render json: { error: "Gym not found" }, status: :bad_request
        end
    end
end