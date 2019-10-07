class AddEmailToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :email, :string
  end
end
