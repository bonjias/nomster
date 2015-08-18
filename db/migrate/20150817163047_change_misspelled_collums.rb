class ChangeMisspelledCollums < ActiveRecord::Migration
  def change
rename_column :places, :adress, :address 
rename_column :places, :discription, :description
    	
  end
end
