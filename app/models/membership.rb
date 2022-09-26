class Membership < ApplicationRecord
    belongs_to :client
    belongs_to :gym
    validates :charge, :gym_id, :client_id, presence: true
    validates :client_id, uniqueness: true
end
