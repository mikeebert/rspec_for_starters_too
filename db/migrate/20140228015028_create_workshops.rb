class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
    	t.date :start_date
    	t.date :end_date

      t.timestamps
    end
  end
end
