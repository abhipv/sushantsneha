class CreateWeddingInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :wedding_informations do |t|
      t.string :groom
      t.string :bride
      t.text   :wedding_countdown_quote
      t.text   :wedding_details_quote
      t.text   :instagallery_quote
      t.text   :our_story

      t.timestamps
    end
  end
end
