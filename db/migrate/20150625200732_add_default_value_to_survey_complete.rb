class AddDefaultValueToSurveyComplete < ActiveRecord::Migration
  def change
  	def up
  		change_column :students, :survey_complete, :boolean, :default => false
		end

		def down
  		change_column :students, :survey_complete, :boolean, :default => nil
		end
  end
end
