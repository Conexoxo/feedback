class CreateTeacherCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_courses do |t|
      t.belongs_to :teacher, null: false, foreign_key: true
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
