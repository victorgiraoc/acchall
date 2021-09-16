class Chat < ApplicationRecord
    has_many :messages, depedent: :destroy
    has_many :subscriptions, depedent: :destroy
    has_many :users, through: :subscriptions
end
