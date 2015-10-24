class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :module
      t.string :category
      t.string :supervisor
      t.string :day
      t.time :time
      t.time :duration

      t.timestamps null: false
    end
  end
end
