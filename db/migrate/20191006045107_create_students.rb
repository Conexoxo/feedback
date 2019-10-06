class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :run
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :edad

      t.timestamps
    end
  end
end
