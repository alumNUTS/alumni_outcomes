class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
    	t.string :name, null: false
    	t.integer :officer_id
    	t.date :start_date
    	t.date :end_date
    end
  end
end
