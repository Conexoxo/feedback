class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :run
      t.string :name
      t.string :last_name
      t.integer :born

      t.timestamps
    end
  end
end
