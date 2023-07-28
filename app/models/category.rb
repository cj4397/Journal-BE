class Category < ApplicationRecord
  belongs_to :users
  has_many :task,  dependent: :destroy
  validates :name, presence: true, uniqueness: { scope: :user_id } 
end
