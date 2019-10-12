class Comment < ApplicationRecord
  has_rich_text :comment

  belongs_to :course
  belongs_to :user
end
