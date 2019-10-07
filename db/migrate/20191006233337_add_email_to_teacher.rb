class AddEmailToTeacher < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :email, :string
  end
end
