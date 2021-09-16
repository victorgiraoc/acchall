class User < ApplicationRecord

    has_many :messages
    has_many :subscriptions
    has_many :chats, through: :subscriptions

    def existing_chats_users
        existing_chats_users = []
        self.chats.each do |chat|
        existing_chats_users.concat(chat.subscriptions.where.not(user_id: self.id).map {|subscription| subscription.user})
        end
        
        existing_chats_users.uniq
    end    
end
