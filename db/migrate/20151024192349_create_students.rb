class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :id_number
      t.string :email
      t.string :course
      t.integer :year

      t.timestamps null: false
    end
  end
end
