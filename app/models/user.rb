class User < ApplicationRecord
    has_secure_password
    enum :user_type,    {developer: 0, manager: 1, qa: 2 }
    validates :name, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
    validates :password, presence: true
    validates :user_type, presence: true
end
