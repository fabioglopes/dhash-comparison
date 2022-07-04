class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :dhash
      t.string :dfingerprint
      t.string :name
      t.string :ocr_string
      t.jsonb :ocr_to_box

      t.timestamps
    end
  end
end
