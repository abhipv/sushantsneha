class CreateEventGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :event_galleries do |t|
      t.string  :name
      t.date    :event_date
      t.boolean :active
      t.integer :sort_order

      t.timestamps
    end
  end
end
