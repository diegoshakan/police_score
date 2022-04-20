class CreatePolicemen < ActiveRecord::Migration[7.0]
  def change
    create_table :policemen do |t|
      t.string :position
      t.string :name

      t.timestamps
    end
  end
end
