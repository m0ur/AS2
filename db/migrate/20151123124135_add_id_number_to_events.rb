class AddIdNumberToEvents < ActiveRecord::Migration
  def change
    add_column :events, :id_number, :integer
  end
end
