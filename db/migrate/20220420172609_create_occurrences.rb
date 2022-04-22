class CreateOccurrences < ActiveRecord::Migration[7.0]
  def change
    create_table :occurrences do |t|
      t.string :type_name
      t.integer :value
      t.datetime :date
      t.references :policeman, null: false, foreign_key: true

      t.timestamps
    end
  end
end
