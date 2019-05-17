class CreateNaats < ActiveRecord::Migration[5.2]
  def change
    create_table :naats do |t|
    	t.string :large_photo
		t.string :photo 
		t.string :title 
		t.string :writername 
		t.string :videolink 
		t.string :audiolink
		t.string :description 
		t.string :webSite 
      t.timestamps
    end
  end
end