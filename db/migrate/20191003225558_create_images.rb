class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :nombre
      t.integer :nrc

      t.timestamps
    end
  end
end

