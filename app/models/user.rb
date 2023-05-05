class User < ApplicationRecord
    has_many :books
    has_secure_password
    validates :password_confirmation,presence:true
    validates :password,presence:true,length:{minimum:6}
end
