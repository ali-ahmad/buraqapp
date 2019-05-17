class AddStatusToNaats < ActiveRecord::Migration[5.2]
  def change
    add_column :naats, :status, :integer, default: 0
  end
end
