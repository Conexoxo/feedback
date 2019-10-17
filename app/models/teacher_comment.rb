class TeacherComment < ApplicationRecord
  has_rich_text :teacher_comment
  validates :teacher_comment, presence: true

  belongs_to :user
end
