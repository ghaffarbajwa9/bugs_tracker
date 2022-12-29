class User < ApplicationRecord
    enum :user_type,    {developer: 0, manager: 1, qa: 2 }
end
