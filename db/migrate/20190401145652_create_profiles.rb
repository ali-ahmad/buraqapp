class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
    	t.string :nicn 
	    t.string :firstname 
		t.string :lastname
		t.string :my_skills 
		t.string :phone 
		t.string :phone2 
		t.string :special_designation 
		t.string :gender 
		t.datetime :datetime
		t.string :new_albem
		t.string :website
		t.string :address 
		t.float :latitude 
		t.float :longitude 
		t.string :location
		t.string :locationpicker
		t.string :route
		t.string :country 
		t.string :province 
		t.string :city 
		t.string :area 
		t.string :facebook_link 
		t.string :twitter_link 
		t.string :whatsapp 
      t.timestamps
    end
  end
end