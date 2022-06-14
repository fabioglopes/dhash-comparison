class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :dhash
      t.string :dfingerprint
      t.string :name

      t.timestamps
    end
  end
end
