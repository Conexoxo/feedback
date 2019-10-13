class TeacherComment < ApplicationRecord
  has_rich_text :teacher_comment

  belongs_to :user
end
