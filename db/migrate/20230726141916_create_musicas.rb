class CreateMusicas < ActiveRecord::Migration[7.0]
  def change
    create_table :musicas do |t|
      t.string :title
      t.references :banda, null: false, foreign_key: true

      t.timestamps
    end
  end
end
