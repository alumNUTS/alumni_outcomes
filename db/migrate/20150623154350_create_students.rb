class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :name, null: false
    	t.string :email, null: false, unique: true
    	t.string :password_digest, null: false
    	t.boolean :is_employed, default: false
    	t.integer :phone_number
    	t.string :city
    	t.string :state
    	t.text :skills
    	t.string :company_name
    	t.date :employment_date
    	t.integer :cohort_id
    	t.string :status, default: "student"
    	t.boolean :survey_complete
    	t.string :image
    	t.timestamps
    end
  end
end
