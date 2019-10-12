class Comment < ApplicationRecord
  belongs_to :course
<<<<<<< HEAD
  belongs_to :user
  
=======
>>>>>>> 56d0a17c5bc229ad199dd81940324efeb5a05171
  has_rich_text :body
end
