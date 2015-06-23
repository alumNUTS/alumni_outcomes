class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
    	t.string :name, null: false
    	t.string :email, null: false, unique: true
    	t.string :password_digest, null: false
    	t.string :image
    end
  end
end