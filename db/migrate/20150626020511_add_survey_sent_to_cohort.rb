class AddSurveySentToCohort < ActiveRecord::Migration
  def change
    add_column :cohorts, :survey_sent, :boolean, default: false
  end
end
