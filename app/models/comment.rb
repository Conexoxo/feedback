class Comment < ApplicationRecord
  has_rich_text :comment
  validates :comment, presence: true
  
  belongs_to :course
  belongs_to :user
end
