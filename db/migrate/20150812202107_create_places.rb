class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|

    	t.string :name
    	t.text :discription
    	t.string :adress

      t.timestamps
    end
  end
end
