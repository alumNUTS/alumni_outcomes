class ChangeIsEmplyedToEmploymentStatus < ActiveRecord::Migration
  def change
  	rename_column :surveys, :is_employed, :employment_status
  end
end
