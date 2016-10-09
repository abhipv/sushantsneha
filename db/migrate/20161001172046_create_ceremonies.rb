class CreateCeremonies < ActiveRecord::Migration[5.0]
  def change
    create_table :ceremonies do |t|
      t.string :name
      t.text   :message
      t.date   :ceremony_date
      t.string :ceremony_time
      t.string :ceremony_location
      t.text   :map_url

      t.timestamps
    end
  end
end
