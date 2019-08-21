class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
    	t.string :title
    	t.string :location
    	t.text :description
    	t.datetime :start_date
    	t.integer :duration
    	t.integer :price
    	t.integer :admin_id, index: true
      t.timestamps
    end
  end
end
