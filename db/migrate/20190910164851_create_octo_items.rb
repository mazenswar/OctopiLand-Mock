class CreateOctoItems < ActiveRecord::Migration[5.2]
  def change
    create_table :octo_items do |t|
      t.belongs_to :item, foreign_key: true
      t.belongs_to :octopus, foreign_key: true

      t.timestamps
    end
  end
end
