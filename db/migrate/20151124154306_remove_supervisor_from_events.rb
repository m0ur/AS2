class RemoveSupervisorFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :supervisor, :string
  end
end
