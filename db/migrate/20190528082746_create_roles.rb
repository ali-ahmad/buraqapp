class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.string :title
      t.json :rights, null: false, default: '{can_view: true, can_edit: false, view_only: true}'      
      
      t.timestamps
    end
  end
end
