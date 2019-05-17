class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
    	t.string :large_photo
		t.string :photo 
		t.string :organization_name 
		t.string :ownername 
		t.string :phone 
		t.string :phone2 
		t.datetime :datetime
		t.string :email 
		t.string :email2 
		t.string :webSite 
		t.string :address
		t.string :landMark 
		t.string :country 
		t.string :province 
		t.string :city
		t.string :pin_code 
		t.string :area 
		t.string :Websitesurl
		t.string :facebook_url 
		t.string :twitter_url
		t.string :googleplus_url 
		t.string :instagram_url
		t.string :whatsappno
      t.timestamps
    end
  end
end
