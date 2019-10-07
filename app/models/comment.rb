class Comment < ApplicationRecord
  belongs_to :course
  has_rich_text :body
end
