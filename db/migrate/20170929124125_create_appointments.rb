class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.text :location
      t.datetime :app_date
      t.belongs_to :trainer, index: true 
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
