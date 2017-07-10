class CreateScribbles < ActiveRecord::Migration[5.1]
  def change
    create_table :scribbles do |t|
      t.string :message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
