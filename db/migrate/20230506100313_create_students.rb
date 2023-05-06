class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :phone
      t.integer :grade
      t.datetime :birthday

      t.timestamps
    end

    add_index :students, :grade
  end
end
