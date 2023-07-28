require "bcrypt"
require "base64"
class User < ApplicationRecord
has_many :category, dependent: :destroy
has_many :task, dependent: :destroy
validates :email, presence: true, uniqueness:true
validates :name, presence: true

include BCrypt

after_create :generate_token

def generate_token 
    self.token =  SecureRandom.base64[0..32]
    self.save
end


def password
    @password ||= Password.new(password_hash)
end

def password=(new_password)
  
    @password = Password.create(new_password)
    self.password_hash = @password
   
end


end
