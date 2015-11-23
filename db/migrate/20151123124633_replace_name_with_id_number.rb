class ReplaceNameWithIdNumber < ActiveRecord::Migration
  def up
		remove_column :events, :eventsSupervisor

  end
end
