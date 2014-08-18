class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.belongs_to :case
      t.string :date_of_incident
      t.string :statute_of_limitations
      t.string :liability
      t.boolean :alcohol
      t.boolean :weather_factor
      t.float :damage
      t.boolean :airbag
      t.float :speed

      t.timestamps
    end
  end
end
