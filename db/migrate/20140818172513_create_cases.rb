class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.belongs_to :user
      t.string :name
      t.integer :number
      t.string :doc_number
      t.string :judge
      t.string :court
      t.string :plaintiff
      t.string :defendant
      t.boolean :corporation
      t.string :status
      t.string :creation_date
      t.string :date_closed
      t.string :type
      t.string :sub_type
      t.text :description

      t.timestamps
    end
  end
end
