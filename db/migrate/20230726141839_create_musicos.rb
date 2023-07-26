class CreateMusicos < ActiveRecord::Migration[7.0]
  def change
    create_table :musicos do |t|
      t.string :name
      t.references :banda, null: false, foreign_key: true

      t.timestamps
    end
  end
end
