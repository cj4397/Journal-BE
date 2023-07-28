class Task < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :task, presence: true, uniqueness: { scope: :user_id }
end
