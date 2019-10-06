class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :run
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.integer :edad
      t.string :email

      t.timestamps
    end
  end
end
