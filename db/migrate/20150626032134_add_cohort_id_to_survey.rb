class AddCohortIdToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :cohort_id, :integer
  end
end
