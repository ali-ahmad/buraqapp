class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :large_photo
      t.string :photo  
      t.string :organizationsname 
      t.string :firstname 
      t.string :program_type
      t.string :program_name 
      t.string :datetime
      t.string :day 
      t.string :time 
      t.string :client_name
      t.string :address
      t.string :landmark
      t.string :route
      t.string :location_picker
      t.string :country
      t.string :province
      t.string :city
      t.string :area_name
      t.string :facebookbook_link
      t.string :twitter_link
      t.string :whatsappno
      t.string :spicily_speech_skill
      t.string :spicily_speech_fullName
      t.string :spicily_speech_photo
      t.string :spicily_speech_designation
      t.string :speekar_skill
      t.string :speekar_fullName
      t.string :speekar_photo
      t.string :speekar_designation
	t.string :guest_skill
      t.string :guest_fullName
      t.string :guest_photo
      t.string :guest_designation
      t.string :vocalist_skill
      t.string :vocalist_fullName
      t.string :vocalist_photo
      t.string :vocalist_designation
      t.string :sponsor_fullName
      t.string :sponsor_photo
      t.timestamps
    end
  end
end
