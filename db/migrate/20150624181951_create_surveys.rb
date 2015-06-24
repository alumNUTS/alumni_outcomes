class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
    	t.string    "name"
    	t.integer		"web_dev_type"
	    t.boolean   "employment_status"
	    t.integer   "position_type"
	    t.boolean		"found_thru_outcomes"
	    t.string		"company"
	    t.date     	"employment_date"
	   	t.integer		"enough_preparation"
	   	t.integer		"officer_effectiveness"
	   	t.string		"should_have_learned"
	   	t.string		"hurdles"
	   	t.string		"anything_else"
    end
  end
end
