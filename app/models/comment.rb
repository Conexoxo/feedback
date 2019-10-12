class Comment < ApplicationRecord
  belongs_to :course
  belongs_to :user
  
  has_rich_text :comment
end
