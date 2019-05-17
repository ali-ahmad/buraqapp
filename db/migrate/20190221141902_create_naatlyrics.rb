class CreateNaatlyrics < ActiveRecord::Migration[5.2]
  def change
    create_table :naatlyrics do |t|
    	t.integer :naat_id
    	t.integer :language_id
    	t.string :photo 
		t.string :title 
      t.timestamps
    end
  end
end
