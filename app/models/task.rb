class Task < ApplicationRecord
  validates :title, presence: true
  
  scope :with_deadline, lambda { where("deadline is not null") }
end
