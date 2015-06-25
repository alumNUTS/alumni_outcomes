class ChangeDataTypeForPhoneNumber < ActiveRecord::Migration
  def change
  	change_column :students, :phone_number, :decimal, precision: 10
  end
end
